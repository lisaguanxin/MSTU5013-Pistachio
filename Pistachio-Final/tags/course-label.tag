<course-label>
    <div>
        <span>Course Code</span>
        <input type="text" ref="department" value="">
        <br>Course Name</br>
        <input type="text" ref="courseName" value="">
    </div>

    <div>
        <span>What are some tags you would like to add that best describe this course</span>
        <input type="text" ref="courseTag1" value="">
        <input type="text" ref="courseTag2" value="">
        <input type="text" ref="courseTag3" value="">
        <input type="text" ref="courseTag4" value="">
        <input type="text" ref="courseTag5" value="">
    </div>

    <div>
      <span> Tag My Course </span>
      <input type = "text" ref = "mainTag" value = "">
      <br> Course </br>
      <input type="text" ref="courseData" value="">
    </div>

    <button type="button" onclick={ submitEvaluation }>SUBMIT</button>

    <div >
        <button type="button" onclick={ parent.closeCourseLabel }>CANCEL</button>
    </div>

    <script>
        var that = this;

        this.courseData = [];

        var database = firebase.database();
        var departmentRef = database.ref('department');
        //set where to write in the data mainTag;
        var tagRef = database.ref('mainTag');

        submitEvaluation(event) {
            console.log(event)
            var newCourse = {};
            newCourse.courseName = this.refs.courseName.value;
            newCourse.tag1 = this.refs.courseTag1.value;
            newCourse.tag2 = this.refs.courseTag2.value;
            newCourse.tag3 = this.refs.courseTag3.value;
            newCourse.tag4 = this.refs.courseTag4.value;
            newCourse.tag5 = this.refs.courseTag5.value;
            // push a new node to the 'Department' reference. - this is unique key (do you want the unique key or named key? ) how to garb the user input courseCode as the newKey? - think about how you define newKey
            var newKey = this.refs.department.value;
            console.log('newKey');

            // Now we have a unique and specific reference to write our data. But again, think abou the database, do you want a unique key? What the database looks like?
            departmentRef.child(newKey).set(newCourse);

            //why can't just put mainTag? And tagRef.child(mainTag).update(courseData);
            var newTag = {};
            // newTag.mainTag = this.refs.mainTag.value;
            newTag.courseData = this.refs.courseData.value;
            //this sets the newTagKey location to tag ref
            var newTagKey = this.refs.mainTag.value;
            console.log('newTagKey');

            tagRef.child(newTagKey).update(newTag);

            // var newTag = tagRef.push().key;
            // console.log(newTag);
            // tagRef.child(newTag).update(newCourse);
            // var newTag = {};
            // var realTagRef = this.refs.realTag.value;
            // var courseDataRef = this.refs.courseData.value;

            // var newTagKey = this.refs.realTag.value;
            // console.log(newTagKey);
            tagRef.child(newTag).update(courseDataRef);

            // this.tagID = this.id;
            // var database = firebase.database();

            this.parent.closeCourseLabel();

        }

        // if you want to set a new refernce based on the course name
    </script>

    <style>
        :scope {
            display: block;
            background-color: grey;
            color: white;
            border: 1px solid yellow;
            padding: 10px;
            position: fixed;
            right: 0;
            bottom: 0;
            width: 50%;
            height: 600px;
        }

    </style>

</course-label>
