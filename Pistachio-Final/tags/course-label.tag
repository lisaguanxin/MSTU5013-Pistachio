<course-label>
    <div>
        <span>Course Code</span>
        <input type="text" ref="department" value="">
        <span>Course Name</span>
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

    <button type="button" onclick={ submitEvaluation }>SUBMIT</button>

    <div >
        <button type="button" onclick={ parent.closeCourseLabel }>CANCEL</button>
    </div>

    <script>
        var that = this;

        this.courseData = [];

        var database = firebase.database();
        var departmentRef = database.ref('department');
        //Is there anything wrong here??
        var tagRef = database.ref('tag');

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

            var newTag = tagRef.push().key;
            console.log(newTag);
            tagRef.child(newTag).update(newCourse);

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

    <div class="">
        label
    </div>
</course-label>
