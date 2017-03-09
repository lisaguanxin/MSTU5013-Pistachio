<courses>
    <h1>{course.code} {course.name}</h1>

    <p> Course Description: { newCourseDescription }

    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

    <button type="button" onclick={ toggleEvaluation }>
        I want to evaluate</button>
    <button type="button" onclick={ updateCourseDB }>
        Next Course</button>
    <div class="comment-list">
        <comment each={ commentList }
        coursedata={ parent.course}>
      </comment>

    </div>
    <!-- <comment coursedata={ course }></comment>
    ワカィました！！！should be {parent.course}
    coursedata, or xxx, just a container -->
  <evaluation if={ composingEvaluation } coursedata={ course }></evaluation>

    <script>
        // this.jin = {
        //   first:"jin",
        //   last:"kuwata"
        // };
        console.log('alpha', this);

        this.course = {
            code: "MSTU 4000",
            name: "Core Seminar"
        };

        // onclick - change course name accordingly - this you need to figure it out. Like how onclick it
        // - it will change the course name and course description 		this.getCourseFromDB = function(event){ 			this.courseDB =

        var that = this;

        this.composingEvaluation = false;

        this.toggleEvaluation = function (event) {
            console.count('jin');
            this.composingEvaluation = true;
        };
        console.log(this);
        this.closeEvaluation = function (event) {
            that.composingEvaluation = false;
            that.update();
        };
        this.commentList = [
            {
                studentProfile: "M.A Instructional Technology and Media",
                professor: "Dr.Chang",
                courseDecription: "seminar"
            }, {
                studentProfile: "Second year Doctoral student",
                professor: "Dr.Chang",
                courseDecription: "new students"
            }, {
                studentProfile: "Second year M.A. Communication",
                professor: "Dr.Chang",
                courseDecription: "bi-weekly"
            }
        ];
    </script>
</courses>
