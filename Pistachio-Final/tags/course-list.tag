<course-list>
    <br>{name}{tag}</br>

    <script>
        console.log('tag:', this);
        console.log('opts:', this.opts);
        this.name = this.opts.name;
        this.tag = this.opts.tag;
    </script>

    <style>
        :scope {
            display: block;
            background-color: grey;
            color: white;
            border: 1px solid yellow;
            padding: 10px;
            position: fixed;
            right: 300px;
            bottom: 0;
            width: 50%;
            height: 400px;
        }

    </style>
</course-list>
