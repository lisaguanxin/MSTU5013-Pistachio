<course-app>
    <div class="search">
        <input type="text" name="search" placeholder="Interested..." onkeyup={toggleCourse} ref="searchInput">
        <button type="button" name="button" onclick={toggleCourseList} ref="searchBtn">Search</button>
    </div>

    <!-- <div if={courseListState} class="course-list">
        <course-list each={ courseList }></course-list>
    </div> -->
    <br>
    <p class="tagtitle">You can tag the courses you have taken here.</p>

    <div class="courseLabel">
        <button type="button" name="button" onclick={toggleCourseLabel}>
            Tag Course Here
        </button>
        <course-label if={courseLabel}></course-label>
    </div>

<div class="courseCode">
  <div each={ courses }>{ courseCode }</div>
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
        this.CourseList = false;

        this.courses = [];

        this.toggleCourseList = function (event) {
            var typedQuery = this.refs.searchInput.value;
            console.log('search works');
            this.CourseList = true;
//think about the order last!
            firebase.database().ref('mainTag/'+ typedQuery).on('value', function (snapshot) {

                var data = snapshot.val();
                var CourseList = [];
                for (var key in data) {
                    CourseList.push(data[key]);
                }
                console.log(CourseList);

                that.courses = CourseList;
                that.update();
            });
            // that.CourseListData = CourseList; if (typedQuery = CourseList.) {

        };



        //read the data on the tag load (is it right to load it again in parent tag?) it is also where to write data to datatbase.
        var database = firebase.database();
        var departmentRef = database.ref('department');
        var tagRef = database.ref('mainTag');

        //how to write that if(value = tag value) then event.eventhandler...

        this.CourseListData = [];

        var code = "Fun";

        // ref('mainTag/')is not working. console.log has no difference from 'mainTag'


// Is this the right way?
        getResults(event){
          mainTagRef.orderbyChild(newCourse.courseCode).equalTo('CS').once('value',
          function(snap){
            console.log(snap.val());
          });
          console.log('getResults()');
        }

        // } tagRef.on('value',function(snapshot){   var data = snapshot.val();
        //
        //   for (var key in data){     courseData.push(data[key]);   } }); var list = []; snapshot.forEach(function (thing) {     list.push(thing.val()); }); that.courseList = course - list; that.upadate(); });
    </script>
    <style></style>
</course-app>
