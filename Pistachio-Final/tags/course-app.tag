<course-app>
    <div class="search">
        <input type="text" name="search" placeholder="Interested..." onkeyup={toggleCourse} ref="search">
        <button type="button" name="button" onclick={toggleCourseList} ref="search">Search</button>
    </div>

    <!-- <div if={courseListState} class="course-list">
        <course-list each={ courseList }></course-list>
    </div> -->
    <br>
    <p class = "tagtitle">You can tag the courses you have taken here.</p>
    
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

        this.CourseList = false;
        this.toggleCourseList = function(event){
          console.log('lllll');
          this.CourseList = true;
        };

        };

        //read the data on the tag load (is it right to load it again in parent tag?) it is also where to write data to datatbase.
        var database = firebase.database();
        var departmentRef = database.ref('department');
        var tagRef = database.ref('mainTag');

        //how to write that if(value = tag value) then event.eventhandler...

        this.CourseListData = [];
        firebase.database().ref('mainTag').on('value', function(snapshot){
          var data = snapshot.val();
          var CourseList = [];
          for (var key in data){
            CourseList.push(data[key]);
          }
          console.log (CourseList);

          that.CourseListData = CourseList;
          that.update();

        });
        // tagRef.on('value',function(snapshot){
        //   var data = snapshot.val();
        //
        //   for (var key in data){
        //     courseData.push(data[key]);
        //   }
        // });
            // var list = []; snapshot.forEach(function (thing) {     list.push(thing.val()); }); that.courseList = course - list; that.upadate();
// });
    </script>
    <style></style>
</course-app>
