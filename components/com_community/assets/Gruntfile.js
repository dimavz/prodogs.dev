module.exports = function( grunt ) {

    // Load tasks.
    require( 'matchdep' ).filterDev( [ 'grunt-*' ] ).forEach( grunt.loadNpmTasks );

    // Unobtrusive JSON reader.
    function readJSON( filepath ) {
        var data = {};
        try {
            data = grunt.file.readJSON( filepath );
        } catch (e) {}
        return data;
    }

    var vendorDir = 'vendors/',
        sourceDir = 'source/',
        distDir = 'release/',
        tempDir = '_temp/',
        docDir = 'jsdoc/',
        hintOptions = readJSON('.jshintrc');

    grunt.initConfig({
    	watch: {
            dev: {
                files: [
                    '<%= path.source %>js/**/*.js',
                    '<%= path.source %>css/**/*.css',
                    'postbox/js/**/*.js'
                ],
                tasks: [
                    'requirejs',
                    'concat'
                ]
            }
    	},
        path: {
            vendor: vendorDir,
            source: sourceDir,
            dist: distDir,
            temp: tempDir,
            doc: docDir
        },
        concat: {
            loader: {
                src: [
                    '<%= path.source %>js/loader.preinit.js',
                    '<%= path.vendor %>lab.min.js',
                    '<%= path.source %>js/loader.js'
                ],
                dest: '<%= path.dist %>js/loader.js'
            }
        },
        jshint: {
            scripts: {
                src: [
                    'Gruntfile.js',
                    '<%= path.source %>js/**/*.js'
                ],
                options: hintOptions
            }
        },
        requirejs: {
            source: {
                options: {
                    baseUrl: sourceDir + 'js/',
                    mainConfigFile: sourceDir + 'js/bundle.js',
                    name: '../../vendors/almond',
                    include: [ 'bundle' ],
                    wrap: true,
                    out: distDir + 'js/bundle.js',
                    optimize: 'none',
                    preserveLicenseComments: false
                }
            },
            postbox: {
                options: {
                    baseUrl: 'postbox/js/',
                    mainConfigFile:'postbox/js/bundle.js',
                    name: '../../vendors/almond',
                    include: [ 'bundle' ],
                    wrap: true,
                    out: distDir + 'js/postbox.js',
                    optimize: 'none',
                    preserveLicenseComments: false
                }
            },
            stylesheets: {
                options: {
                    cssIn: sourceDir + 'css/override.css',
                    out: distDir + 'css/override.css',
                    optimizeCss: 'standard'
                }
            }
        },
        uglify: {
            app: {
                files: [{
                    expand: true,
                    src: ['release/js/*.js'],
                    dest: ''
                }],
                options: {
                    preserveComments: false,
                    report: 'gzip'
                }
            },
            legacy: {
                files: {
                    'script-1.2.min.js': [ 'script-1.2.js' ]
                },
                options: {
                    preserveComments: 'some',
                    report: 'gzip'
                }
            }
        }
    });
    
    // Regirter grunt tasks.
    grunt.registerTask( 'build', [
        'requirejs',
        'concat',
        'uglify:app',
    ]);

    grunt.registerTask( 'dev', ['watch:dev']);

    grunt.registerTask( 'test', [
        'requirejs',
        'concat'
    ]);

    // Custom tasks.
    // -------------------------------------------------------------------------
};
