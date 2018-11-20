define('views/inputbox/status',[
    'sandbox',
    'views/inputbox/base',
    'utils/constants',
    'utils/language'
],

// definition
// ----------
function( $, InputboxView, constants, language ) {

    return InputboxView.extend({

        template: _.template('\
            <div class="joms-postbox__status-composer" style="position:relative">\
                <div class="joms-postbox-input joms-inputbox" style="<%= enablebackground ? \'padding-bottom: 80px\' : \'\' %>">\
                    <div class=inputbox>\
                        <div style="position:relative">\
                            <div style="position:relative"><span class=input></span></div>\
                            <div class=joms-textarea__wrapper>\
                                <textarea class="input input-status joms-textarea" placeholder="<%= placeholder %>" style="min-height:1.4em"></textarea>\
                            </div>\
                        </div>\
                    </div>\
                </div>\
                <div class="joms-icon joms-icon--emoticon" style="top:20px; right: 5px;">\
                    <div style="position:relative"><svg viewBox="0 0 16 16" onclick="joms.view.comment.showEmoticonBoard(this);">\
                        <use xlink:href="<%= window.joms_current_url %>#joms-icon-smiley"></use>\
                        </svg></div>\
                </div>\
                <div class="charcount joms-postbox-charcount"></div>\
                <% if(enablebackground) { %>\
                <div class="colorful-status__container" style="display: none;">\
                    <div class="colorful-status__placeholder" unselectable="on">What\'s on your mind?</div>\
                    <div class="colorful-status__inner" contenteditable="true"><div><br></div></div>\
                </div>\
                <div class="colorful-status__color">\
                    <span class="joms-direction joms-left"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>\
                    <ul class="colorful-status__color-list"></ul>\
                    <span class="joms-direction joms-right"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>\
                </div>\
                <% } %>\
            </div>\
        '),

        getTemplate: function() {
            var hint = language.get('status.status_hint') || '',
                enablebackground = constants.get('conf').enablebackground,
                html = this.template({ placeholder: hint, enablebackground: enablebackground });

            return $( html );
        },

        events: function() {
            return _.extend({},InputboxView.prototype.events,{
                'keydown .colorful-status__inner': 'onColorStatusKeydown',
                'keyup .colorful-status__inner': 'onColorStatusKeyup',
                'input .colorful-status__inner': 'onColorStatusInput',
                'paste .colorful-status__inner': 'onColorStatusPaste',
                'focus .colorful-status__inner': 'onColorStatusFocus',
                'click .colorful-status__color-selector': 'onColorSelect',
                'click .joms-left': 'colorSlideToLeft',
                'click .joms-right': 'colorSlideToRight'
            });
        },

        initialize: function() {
            var hash, item, id, i;

            InputboxView.prototype.initialize.apply( this, arguments );

            this.moods = constants.get('moods');
            hash = {};
            if ( this.moods && this.moods.length ) {
                for ( i = 0; i < this.moods.length; i++ ) {
                    id = this.moods[i].id;
                    item = [ id, this.moods[i].description ];
                    if ( this.moods[i].custom ) {
                        item[2] = this.moods[i].image;
                    }
                    hash[ id ] = item;
                }
            }
            this.moods = hash;
            this.colorful = false;
            this.blankDiv = '<div><br></div>';
            this.isAndroid = navigator.userAgent.toLowerCase().indexOf("android") > -1;
            this.newText = '';
            this.oldOffset = 0;
            this.newOffset = 0;
        },

        render: function() {
            var div = this.getTemplate();
                this.$el.replaceWith( div );
                this.setElement( div ),
                conf = constants.get('conf');

            InputboxView.prototype.render.apply( this, arguments );
            this.$inputbox = this.$el.find('.joms-postbox-input');

            if (conf.enablebackground) {
                this.$colorContainer = this.$el.find('.colorful-status__container'); 
                this.$colorInner = this.$colorContainer.find('.colorful-status__inner');
                this.$colorPlaceholder = this.$colorContainer.find('.colorful-status__placeholder');
                this.$colorList = this.$el.find('.colorful-status__color-list');
                
                this.$colorList.html(this.renderColorList());

                if ($.mobile) {
                    this.$colorList.css('overflow-x', 'auto')
                }

                if (joms.ie) {
                    var self = this;
                    setTimeout( function() {
                        var element = self.$colorInner[0],
                            observer = new MutationObserver(function (mutations) {
                                mutations.forEach(function (mutation) {
                                    var content = self.$colorInner.text(),
                                        numChild = self.$colorInner.children().length;

                                    if (content || numChild > 1) {
                                        self.$colorPlaceholder.hide();
                                    } else {
                                        self.$colorPlaceholder.show();
                                    }
                                })
                            }
                        );

                        observer.observe(element, {
                            childList: true,
                            characterData: true,
                            subtree: true,
                        });
                    }, 300)
                }
            }
        },

        renderColorList: function() {
            var joms_bg = constants.get('backgrounds');

            var list = joms_bg.map(function(item) {
                return '<li class="colorful-status__color-selector"\
                            data-bgid="'+ item.id +'"\
                            data-text-color="#'+ item.textcolor +'"\
                            data-placeholder-color="#'+ item.placeholdercolor +'"\
                            data-image="'+ item.image +'"\
                            style="background-image: url(\''+ item.thumbnail +'\')">\
                        </li>';
            })

            list.unshift('<li class="colorful-status__color-selector active"\ style="background-image: url(\''+ joms.ASSETS_URL +'photos/none.png\')"></li>');
            return list.join('');
        },

        set: function( value ) {
            this.resetTextntags( this.$textarea, value );
            this.flags.attachment && this.updateAttachment( false, false );
            this.flags.charcount && this.updateCharCounterProxy();
            this.onKeydownProxy();
        },

        reset: function() {
            this.colorful = false;
            this.$inputbox && this.$inputbox.show();
            this.resetColorfulStatus();

            this.resetTextntags( this.$textarea, '' );
            this.flags.attachment && this.updateAttachment( false, false );
            this.flags.charcount && this.updateCharCounterProxy();
            this.onKeydownProxy();
        },

        resetColorfulStatus: function() {
            this.$colorContainer && this.$colorContainer.hide();
            this.$colorInner && this.$colorInner.html(this.blankDiv);
            this.$colorPlaceholder && this.$colorPlaceholder.show();
        },

        value: function() {
            var value = '';
            if (this.colorful) {
                this.$colorInner.children().each( function(idx, item) {
                    var text = $(item).text().trim();
                    if (value) {
                        value += '\n' + text;
                    } else {
                        value = text
                    }
                });

                return value;
            } else {
                var el = this.$textarea[0];
                    
                value = el.joms_hidden ? el.joms_hidden.val() : el.value;

                return value
                    .replace( /\t/g, '\\t' )
                    .replace( /%/g, '%25' );
            }
        },

        updateInput: function() {
            InputboxView.prototype.updateInput.apply( this, arguments );
        },

        updateAttachment: function( mood, location ) {
            var attachment = [];

            this.mood = mood || mood === false ? mood : this.mood;
            this.location = location || location === false ? location : this.location;

            if ( this.location && this.location.name ) {
                attachment.push( '<b>' + language.get('at') + ' ' + this.location.name + '</b>' );
            }

            if ( this.mood && this.moods[this.mood] ) {
                if ( typeof this.moods[this.mood][2] !== 'undefined' ) {
                    attachment.push(
                        '<img class="joms-emoticon" src="' + this.moods[this.mood][2] + '"> ' +
                        '<b>' + this.moods[this.mood][1] + '</b>'
                    );
                } else {
                    attachment.push(
                        '<i class="joms-emoticon joms-emo-' + this.mood + '"></i> ' +
                        '<b>' + this.moods[this.mood][1] + '</b>'
                    );
                }
            }

            if ( !attachment.length ) {
                this.$attachment.html('');
                this.$textarea.attr( 'placeholder', this.placeholder );
                return;
            }

            this.$attachment.html( ' &nbsp;&mdash; ' + attachment.join(' ' + language.get('and') + ' ') + '.' );
            this.$textarea.removeAttr('placeholder');
        },

        // colorful status event

        colorSlideToLeft: function() {
            var left = this.$colorList.scrollLeft(),
                spacer = $.mobile ? 100 : 200;

            this.$colorList.stop().animate({
                scrollLeft: left - spacer
            })
        },

        colorSlideToRight: function() {
            var left = this.$colorList.scrollLeft(),
                spacer = $.mobile ? 100 : 200;

            this.$colorList.stop().animate({
                scrollLeft: left + spacer
            })
        },

        isComposing: function(key) {
            return key === 32
                || ( key > 47 && key < 91)
                || ( key > 95 && key < 112)
                || ( key > 183 && key < 224);
        },

        caretToEnd: function(el) {
            var range = document.createRange(),
                sel = window.getSelection();

            el.childNodes[0];
            range.setStart(el.childNodes[0], 0);
            range.collapse(true);
            sel.removeAllRanges();
            sel.addRange(range);
            el.focus();
        },

        onColorStatusKeydown: function(e) {
            var BACKSPACE = 8,
                ENTER = 13,
                DELETE = 46,
                LIMIT = 149,
                remove = [BACKSPACE , DELETE].indexOf(e.keyCode) > -1 ,
                enter = e.keyCode === ENTER,
                selection = window.getSelection();
            
            this.oldOffset = selection.focusOffset;

            if ( !this.isAndroid && remove ) {
                var html = this.$colorInner.html().trim();

                if(html === this.blankDiv) { 
                    e.preventDefault();
                } else if (!html) {
                    e.preventDefault();
                    this.$colorInner.html(this.blankDiv);
                    this.caretToEnd(this.$colorInner[0]);
                }
                return;
            }

            var content = this.$colorInner.text(),
                contentLength = content.length;

            if ( enter ) {
                var numChild = this.$colorInner.children().length;

                if ( contentLength >= LIMIT || numChild > 3 ) {
                    e.preventDefault();
                    return;
                }

                var $focusNode = this.$(selection.focusNode),
                    text = $focusNode.text();

                if (!text) {
                    e.preventDefault();
                    return;
                }
            }

            if ( !this.isAndroid && this.isComposing(e.keyCode) && !e.ctrlKey && contentLength > LIMIT) {
                e.preventDefault();
            }
        },

        onColorStatusKeyup: function(e) {
            var BACKSPACE = 8,
                ENTER = 13,
                DELETE = 46,
                LIMIT = 149, 
                remove = ([BACKSPACE , DELETE].indexOf(e.keyCode) > -1 ),
                text = this.$colorInner.text().trim();

            this.trigger('keydown', text, e.keyCode);

            if ( remove || this.isAndroid ) {
                var html = this.$colorInner.html().trim();

                if (html === '<br>' || !html) {
                    e.preventDefault();
                    this.$colorInner.html(this.blankDiv);
                    this.caretToEnd(this.$colorInner[0]);
                }
            }
        },

        onColorStatusInput: function(e) {
            if (this.isAndroid) {
                var content = this.$colorInner.text(),
                    numChild = this.$colorInner.children().length,
                    selection = window.getSelection(),
                    LIMIT = 149;

                this.newOffset = selection.focusOffset;
                this.newText = content;

                if (this.newText.length > LIMIT ) {
                    var range = document.createRange();
                    range.setStart(selection.focusNode, this.oldOffset);
                    range.setEnd(selection.focusNode, this.newOffset);
                    range.deleteContents();
                }
            }

            var content = this.$colorInner.text(),
                numChild = this.$colorInner.children().length;

            if (content || numChild > 1) {
                this.$colorPlaceholder.hide();
            } else {
                this.$colorPlaceholder.show();
            }
        },

        onColorStatusPaste: function(e) {
            e.preventDefault();
        },

        onColorSelect: function(e) {
            var $el = this.$(e.currentTarget),
                textColor = $el.attr('data-text-color'),
                placeholder = $el.attr('data-placeholder-color'),
                image = $el.attr('data-image'),
                bgid = $el.attr('data-bgid');

            if( !$el.hasClass('active') ) {
                this.$('.colorful-status__color-selector').removeClass('active');
                $el.addClass('active');
            }

            if (bgid) {
                this.colorful = true;
                this.bgid = bgid;
                this.$inputbox.hide();
                this.$colorContainer.show();
                this.$colorContainer.css('background-image', 'url(\'' + image + '\')');

                textColor && this.$colorInner.css('color', textColor);
                placeholder && this.$colorPlaceholder.css('color', placeholder);
            } else {
                this.colorful = false;
                this.$inputbox.show();
                this.$colorContainer.hide();
            }

            this.trigger('change:type', bgid);
        },

        onColorStatusFocus: function() {
            this.trigger('focus');
        }
    });

});