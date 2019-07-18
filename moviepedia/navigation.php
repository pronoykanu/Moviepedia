<?php
			  
				$genre_sql="SELECT * FROM `genre`";
				$genre_query=mysqli_query($dbconnect, $genre_sql);
				$genre_rs=mysqli_fetch_assoc($genre_query);
			?>
			<?php
				do{?>
				<a href="genre.php?id=<?php echo $genre_rs['genreID']?>"><?php echo $genre_rs['genrename'];?></a>
					<br>
					<?php
				}
				while($genre_rs=mysqli_fetch_assoc($genre_query))
			?>