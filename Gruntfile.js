// Generated on 2014-07-02 using generator-angular 0.9.2, modified by Yong
'use strict';

// # Globbing
// for performance reasons we're only matching one level down:
// 'test/spec/{,*/}*.js'
// use this if you want to recursively match all subfolders:
// 'test/spec/**/*.js'

module.exports = function (grunt) {

    // Load grunt tasks automatically
    require('load-grunt-tasks')(grunt);

    // Time how long tasks take. Can help when optimizing build times
    require('time-grunt')(grunt);

    // Configurable paths for the application
    var appConfig = {
        app: require('./bower.json').appPath || 'app',
        dist: 'dist'
    };

    // Define the configuration for all the tasks
    grunt.initConfig({

        // Project settings
        yeoman: appConfig,

        // Watches files for changes and runs tasks based on the changed files
        watch: {    // TODO
            js: {
                files: ['<%= yeoman.app %>/scripts/{,*/}*.js'],
                options: {
                    livereload: false
                }
            },
            less: {
                files: '<%= yeoman.app %>/less/*.less',
                tasks: 'less'
            },
            gruntfile: {
                files: ['Gruntfile.js']
            },
            livereload: {
                options: {
                    livereload: '<%= connect.options.livereload %>'
                },
                files: [
                    '<%= yeoman.app %>/{,*/}*.html',
                    '.tmp/styles/{,*/}*.css',
                    '<%= yeoman.app %>/images/{,*/}*.{png,jpg,jpeg,gif,webp,svg}'
                ]
            }
        },

        less: {
            compileCore: {
                options: {
                    strictMath: true,
                    sourceMap: true,
                    outputSourceFiles: true,
                    sourceMapURL: 'bootstrap.css.map',
                    sourceMapFilename: '<%= yeoman.app %>/vendor/bootstrap/dist/css/bootstrap.css.map'
                },
                files: {
                    '<%= yeoman.app %>/vendor/bootstrap/dist/css/bootstrap.css': '<%= yeoman.app %>/less/bootstrap.less'
                }
            }
        },

        // Empties folders to start fresh
        clean: {
            dist: {
                files: [
                    {
                        dot: true,
                        src: [
                            '.tmp',
                            '<%= yeoman.dist %>'
                        ]
                    }
                ]
            },
            server: '.tmp'
        },

        // The actual grunt server settings
        connect: {
            options: {
                port: 3000,
                // Change this to '0.0.0.0' to access the server from outside.
                hostname: 'localhost',
                livereload: 35729
            },
            livereload: {
                options: {
                    open: true,
                    middleware: function (connect) {
                        return [
                            connect.static('.tmp'),
                            connect().use(
                                '/vendor',
                                connect.static('./vendor')
                            ),
                            connect.static(appConfig.app)
                        ];
                    }
                }
            },
            test: {
                options: {
                    port: 9001,
                    middleware: function (connect) {
                        return [
                            connect.static('.tmp'),
                            connect.static('test'),
                            connect().use(
                                '/vendor',
                                connect.static('./vendor')
                            ),
                            connect.static(appConfig.app)
                        ];
                    }
                }
            },
            dist: {
                options: {
                    open: true,
                    base: '<%= yeoman.dist %>'
                }
            }
        },

        // Reads HTML for usemin blocks to enable smart builds that automatically
        // concat, minify and revision files. Creates configurations in memory so
        // additional tasks can operate on them
        useminPrepare: {
            html: '<%= yeoman.app %>/index.html',
            options: {
                dest: '<%= yeoman.dist %>',
                flow: {
                    html: {
                        steps: {
                            js: ['concat', 'uglifyjs'],
                            css: ['cssmin']
                        },
                        post: {}
                    }
                }
            }
        },


        uglify: {
            core: {
                options: {
                    mangle: true
                },
                files: {
                    "app/scripts/3rd.js": [
                        'app/vendor/angular/angular.js',
                        'app/vendor/angular-animate/angular-animate.js',
                        'app/vendor/angular-bootstrap/ui-bootstrap-tpls.js',
                        'app/vendor/angular-ui-router/release/angular-ui-router.js',
                        'app/vendor/ng-ScrollSpy.js/src/ng-ScrollSpy.js',
                        'app/vendor/angular-retina/build/angular-retina.js',
                        "app/vendor/jquery/dist/jquery.js",
                        "app/vendor/bootstrap/dist/js/bootstrap.js"

                    ],
                    "app/scripts/dist.js": [
                        'app/scripts/app.js',
                        'app/scripts/route.js',
                        'app/scripts/directives/anchor_smooth_scroll.js'
                    ]
                }
            }
        },

        // ngmin tries to make the code safe for minification automatically by
        // using the Angular long form for dependency injection. It doesn't work on
        // things like resolve or inject so those have to be done manually.
        ngmin: {
            controllers: {
                expand: true,
                cwd: 'app/scripts',
                src: ['app.js','route.js','directives/anchor_smooth_scroll.js'],
                dest: 'app/scripts'
            }
        },

        // Copies remaining files to places other tasks can use
        copy: {
            dist: {
                files: [
                    {
                        expand: true,
                        dot: true,
                        cwd: '<%= yeoman.app %>',
                        dest: '<%= yeoman.dist %>',
                        src: [
                            '*.{ico,txt}',
                            '.htaccess',
                            '*.html',
                            'fonts/*',
                            'languages/*',
                            'view/*',
                            'img/*',
                            'template/**/*',
                            'title/*'
                        ]
                    }
                ]
            }
        },

        // Renames files for browser caching purposes
        filerev: {
            dist: {
                src: [
                    '<%= yeoman.dist %>/scripts/{,*/}*.js',
                    '<%= yeoman.dist %>/styles/{,*/}*.css'
                ]
            }
        },

        // Performs rewrites based on filerev and the useminPrepare configuration
        usemin: {
            html: ['<%= yeoman.dist %>/index.html'],
            options: {
                assetsDirs: ['<%= yeoman.dist %>']
            }
        },

        cssmin: {
            core: {
                files: {
                    "app/styles/dist.css": [
                        "app/vendor/bootstrap/dist/css/bootstrap.css",
                        "app/styles/main.css"
                    ]
                }
            }
        },

        htmlmin: {
            dist: {
                options: {
                    collapseWhitespace: true,
                    conservativeCollapse: true,
                    collapseBooleanAttributes: true,
                    removeCommentsFromCDATA: true,
                    removeOptionalTags: true
                },
                files: [
                    {
                        expand: true,
                        cwd: '<%= yeoman.dist %>',
                        src: ['*.html', 'template/**/*.html'],
                        dest: '<%= yeoman.dist %>'
                    }
                ]
            }
        },

        imagemin: {
            dist: {
                files: [
                    {
                        expand: true,
                        cwd: '<%= yeoman.app %>/images',
                        src: '{,*/}*.{png,jpg,jpeg,gif}',
                        dest: '<%= yeoman.dist %>/images'
                    }
                ]
            }
        },

        // Test settings
        karma: {
            unit: {
                configFile: 'karma.conf.js',
                singleRun: true
            }
        }
    });

    grunt.registerTask('serve', function (target) {
        if (target === 'dist') {
            return grunt.task.run(['build', 'connect:dist:keepalive']);
        }
        grunt.task.run([
            'connect:livereload',
            'watch'
        ]);
    });

    grunt.registerTask('test', [
        'connect:test',
        'karma'
    ]);

    // Dist task
    grunt.registerTask('dist', ['ngmin', 'uglify']);

    grunt.registerTask('build', [
        'clean:dist',
        'useminPrepare',
        'concat',
        'ngmin',
        'copy:dist',
        'cssmin',
        'uglify',
        'filerev',
        'usemin',
        'htmlmin',
        'imagemin',
        'clean:server'
    ]);

    grunt.registerTask('default', [
        'build'
    ]);
};
