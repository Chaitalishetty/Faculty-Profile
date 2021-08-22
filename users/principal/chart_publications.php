<?php
	@session_start();
	if (isset($_SESSION['sdrn'])){
		$sdrn = $_SESSION['sdrn'];
	}
	$sdrn='811';
	// Database Connection 
	$conn = mysqli_connect("localhost", "root", "","test");
	if ($conn->connect_error)  {
		die("Connection failed: " . $conn->connect_error);
	}

	// Fetching Faculty Name From SDRN 
	$sql = "SELECT CONCAT(First_name,' ',Last_name) FROM faculty WHERE Sdrn = '$sdrn' ";
	$query = mysqli_query($conn, $sql) or die("Query Unsuccessful");
	while ($row = mysqli_fetch_array($query)) {
		$faculty_name = $row[0];
	}


	$book_chapter=array();
	$book_publications=array();
	$patent=array();
	$conference=array();
	$copyright=array();
	$journal=array();
	$query = "SELECT COUNT(*) FROM book_chapter WHERE faculty_name IN (SELECT CONCAT(First_name ,' ', COALESCE(Middle_name, ' '),' ',COALESCE(Last_name, ' ')) FROM faculty WHERE Department='COMP')";	
    $result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($book_chapter,$row[0]);
			}
		}
    $query = "SELECT COUNT(*) FROM book_publication";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($book_publications,$row[0]);
			}
		} 
    $query = "SELECT COUNT(*) FROM patent";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($patent,$row[0]);
			}
		} 	
    $query = "SELECT COUNT(*) FROM conference";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($conference,$row[0]);
			}
		} 
    $query = "SELECT COUNT(*) FROM copyright";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($copyright,$row[0]);
			}
		} 
    $query = "SELECT COUNT(*) FROM journal ";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($journal,$row[0]);
			}
		} 
?>
<script>
	var ctx = document.getElementById('chart_faculty_details').getContext('2d');

	var book_chapter = [<?php echo join(',',$book_chapter); ?>];
	var book_publications = [<?php echo join(',',$book_publications); ?>];
	var patent = [<?php echo join(',',$patent); ?>];
	var conference = [<?php echo join(',',$conference); ?>];
	var copyright = [<?php echo join(',',$copyright); ?>];
	var journal = [<?php echo join(',',$journal); ?>];

	var myChart = new Chart(ctx, {
        type: 'doughnut',
    data: {
        labels: ["book_chapter", "book_publications","patent","conference","copyright","journal"],
        datasets: [
        {
            data: [book_chapter,book_publications,patent,conference,copyright,journal],
            backgroundColor: [
                "#003f5c",
                "#444e86",
               "#955196",
               "#dd5182",
               "#ff6e54",
               "#ffa600"
            ]
        }]
    },
    options: {
        title: {
            display: true,
            text: 'Publications'
        },
		responsive: true,
		maintainAspectRatio: true,
		
	},
	});
 
</script>