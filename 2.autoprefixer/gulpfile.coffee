gulp = require("gulp")
autoprefixer = require("gulp-autoprefixer")
notify = require("gulp-notify")
rename = require("gulp-rename")

# task
gulp.task "a", ->
  gulp.src("./1.css")
  .pipe(autoprefixer("last 2 version"))
  .pipe(rename("1-dest.css"))
  .pipe(gulp.dest("./"))
  .pipe notify(message: "コンパイルできたよ！")