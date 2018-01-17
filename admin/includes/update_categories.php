<form action="" method="post">
    <div class="form-group">
        <label for="cat_title">Edit Category</label>
        
        <?php
           if(isset($_GET['edit']) && ($_SESSION['user_role'] == 'admin')) {
               $cat_id = $_GET['edit'];
                
               $query = "SELECT * FROM categories WHERE cat_id = {$cat_id}";
               $select_categories_query = mysqli_query($connection,$query);
               
               while($row = mysqli_fetch_assoc($select_categories_query)){
                   $cat_id = $row['cat_id'];
                   $cat_title = $row['cat_title'];
                   
        ?> 
                 
               <input value="<?php if(isset($cat_title)) echo $cat_title; ?>" type="text" name="cat_title" class="form-control">
              
        <?php  }
           } ?>
        
        <?php
            //update category
            if(isset($_POST['updateCategory'])) {
                $the_categories_title = $_POST['cat_title'];
                
                $query = "UPDATE categories SET cat_title = '{$the_categories_title}' WHERE cat_id = {$cat_id}";
                $update_categories_query = mysqli_query($connection,$query);
                
                if(!$update_categories_query){
                    die("UPDATE FAILED".mysqli_error($connection));
                }
            }
        ?> 
        
    </div>
    
    <div class="form-group">
        
        <input class="btn btn-primary" type="submit" name="updateCategory" value="Update Category">
        
    </div>
</form>