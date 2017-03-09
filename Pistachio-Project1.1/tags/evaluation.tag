<evaluation>
    <div>
        <span>Evaluation for { code } { name }</span>
    </div>
    <div>
        <span>Your Academic Standing</span>
        <input type="text" ref="academicStaning" value="">
    </div>
    <div>
        <span>Who did you take the course with</span>
        <input type="text" ref="professorName" value="">
    </div>
    <div>
        <span>What are some tags you would like to add that best describe this course</span>
        <input type="text" ref="courseTag" value="">
    </div>
    <button type="button" onclick={ submitEvaluation }>SUBMIT</button>
    <button type="button" onclick={ parent.closeEvaluation }>CANCEL</button>
    <script>
        this.submitEvaluation = function(event){
            var newComment = {
                studentProfile:this.refs.academicStanding.value,
                professor:this.refs.professorName.value,
                courseDecription:this.refs.courseTag.value
            };
            this.parent.commentList.push(newComment);
            this.parent.update();
            this.parent.closeEvaluation();
        };
    </script>
    <style>
    :scope {
        display: block;
        background-color: grey;
        color: white;
        border: 1px solid yellow;
        padding: 10px;
        position: fixed;
        right: 0px;
        bottom: 0px;
        width: 50%;
        height: 600px;
    }
    </style>
</evaluation>
