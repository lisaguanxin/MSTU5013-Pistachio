<course-app>
    <div class="search">
        <input type="text" name="search" placeholder="Interested..." onkeyup={toggleCourse} ref="search">
        <button type="button" name="button" onclick={toggleCourseList} ref="search">Search</button>
    </div>
    <!-- <div if={courseListState} class="course-list">
        <course-list each={ courseList }></course-list>
    </div> -->
    <div class="courseLabel">
        <button type="button" name="button" onclick={toggleCourseLabel}>
            Tag Course Here
        </button>
        <course-label if={courseLabel}></course-label>
    </div>

    <!-- javascript  -->
    <script>
        var that = this;
        this.courseLabel = false;
        this.toggleCourseLabel = function (event) {
            console.log('hhhhhh');
            this.courseLabel = true;
        };
        this.closeCourseLabel = function (event) {
            that.courseLabel = false;
            that.update();
        };

        //read the data on the tag load
        var database = firebase.database();
        var departmentRef = database.ref('department');
        var tagRef = database.ref('mainTag');

        this.courseData = [];
        firebase.database().ref('department').on('value', function (snapshot) {
            console.log(snapshot.val());


        tagRef.on('value',function(snapshot){
          var data = snapshot.val();

          for (var key in data){
            courseData.push(data[key]);
          }
        });
            // var list = []; snapshot.forEach(function (thing) {     list.push(thing.val()); }); that.courseList = course - list; that.upadate();
});
    </script>
    <style></style>
</course-app>
