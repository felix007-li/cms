 <div class="col-md-4">
    
    <!-- Blog Search Well -->
    <div class="well blogsearch">
        <h4>Blog Search</h4>
        <!-- Search Form -->
        <form action="search.php" method="post">
            <div class="input-group">
                <input type="text" name="search" class="form-control">
                <div class="input-group-btn">
                    <button class="btn btn-default" name="submit" type="submit">
                        <i class="glyphicon glyphicon-search"></i>
                    </button>
                </div>
            </div>
<!--
       <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
-->
        </form>
        <!-- /.input-group -->
    </div>
    
    <!-- login -->
    <div class="well">
        <h4>Login</h4>
        <!-- Search Form -->
        <form action="includes/login.php" method="post">
            <div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="Enter Username">
                    
            </div>
            
            <div class="input-group">
                <input type="password" name="password" class="form-control" placeholder="Enter Password">
                <span class="input-group-btn">
                    <button class="btn btn-primary" name="login" type="submit">Submit</button>
                </span>
                    
            </div>
        </form>
        <!-- /.input-group -->
    </div>
    
    <!-- Blog Categories Well -->
    <div class="well">
        <?php
            $query = "SELECT * FROM categories LIMIT 3";
            $select_all_categories_sidebar = mysqli_query($connection,$query);          
        ?>
        <h4>Blog Categories</h4>
        <div class="row">
            <div class="col-lg-12">
               
                <ul class="list-unstyled">
                    <?php
                        while($row = mysqli_fetch_assoc($select_all_categories_sidebar)) {
                            $cat_title = $row['cat_title'];
                            $cat_id = $row['cat_id'];

                            echo "<li><a href='category.php?category={$cat_id}'>{$cat_title}</a></li>";
                        }
                    ?>
                    
                </ul>
            </div>
            <!-- /.col-lg-6 -->
            <!--<div class="col-lg-6">
                <ul class="list-unstyled">
                    <li><a href="#">Category Name</a></li>
                    <li><a href="#">Category Name</a></li>
                    <li><a href="#">Category Name</a></li>
                    <li><a href="#">Category Name</a></li>
                </ul>
            </div>-->
            <!-- /.col-lg-6 -->
        </div>
            <!-- /.row -->
    </div>

    <!-- Side Widget Well -->
    <?php include "includes/widget.php" ?>

</div>
