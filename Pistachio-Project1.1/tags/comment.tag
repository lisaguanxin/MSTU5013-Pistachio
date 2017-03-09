<comment>
    <!-- <h3 ref="myheading"> { course.code } Student Comments</h3> -->
    <!-- <p>{ first } { last }</p> -->
    <h3>{ code } { name }</h3>
    <!-- why can't course.code course.name -->
    
<!--
    <div>Student Profile: { studentProfile }</div>
    <div>Professor: { professor }</div>
    <div>Course Tag Decription: { courseDecription }</div>
    <style>
        :scope {
            display: block;
            border: 1px solid brown;
            padding: 10px;
        }
    </style> -->

    <script>
      console.log('tag:', this);
      console.log('opts:', this.opts);
      this.code = this.opts.coursedata.code;
      this.name = this.opts.coursedata.name;

      // this.first = this.opts.xxx.first;
      // this.last = this.opts.xxx.last;

    </script>
</comment>
