<?php
	@session_start();
	if (isset($_SESSION['sdrn'])){
		$sdrn = $_SESSION['sdrn'];
	}
	// $sdrn='811';
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
	$xaxis = array();

	for($i=4; $i>=0; $i--){
	$query = "SELECT COUNT(id),YEAR(now())-$i FROM book_chapter where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%') AND YEAR(publication_year)=YEAR(now())-$i ";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($book_chapter,$row[0]);
				array_push($xaxis,$row[1]);
			}
		}
	}


	for($i=4; $i>=0; $i--){
    $query = "SELECT COUNT(id) FROM book_publication where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%') AND YEAR(year)=YEAR(now())-$i ";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($book_publications,$row[0]);
			}
		} 
	}


	for($i=4; $i>=0; $i--){
    $query = "SELECT COUNT(id) FROM patent where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%') AND YEAR(reg_date)=YEAR(now())-$i ";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($patent,$row[0]);
			}
		} 
	}


	for($i=4; $i>=0; $i--){
    $query = "SELECT COUNT(id) FROM conference where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%')) AND YEAR(con_date)=YEAR(now())-$i ";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($conference,$row[0]);
			}
		} 
	}


	for($i=4; $i>=0; $i--){
    $query = "SELECT COUNT(id) FROM copyright where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%') AND YEAR(reg_date)=YEAR(now())-$i ";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($copyright,$row[0]);
			}
		} 
	}


	for($i=4; $i>=0; $i--){
    $query = "SELECT COUNT(id) FROM journal where (sdrn = '$sdrn' OR faculty_name LIKE '%$faculty_name%' OR author1 LIKE '%$faculty_name%' OR author2 LIKE '%$faculty_name%' OR author3 LIKE '%$faculty_name%' OR author4 LIKE '%$faculty_name%') AND YEAR(year)=YEAR(now())-$i ";
		$result = mysqli_query($conn, $query);
		if(mysqli_num_rows($result) > 0) {
			while ($row = @mysqli_fetch_array($result)) {
				array_push($journal,$row[0]);
			}
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

	var xaxis = [<?php echo join(',',$xaxis); ?>];
	for(var i=0;i<xaxis.length;i++){
		xaxis[i]="YEAR: "+xaxis[i];
	}

	var myChart = new Chart(ctx, {
		type: 'line',
		options: {
		title:{
			display: true,
				text: "Faculty Details"
		},
		legend:{
			position:"bottom"
		},
		scales: {
			yAxes: [{
			ticks: {
				precision: 0
			}
			}]
		}
		},
		data: {
			labels: xaxis,
			datasets: [{ 
				data: book_chapter,
				label: "BOOK CHAPTER",
				borderColor: "rgb(255, 99, 132)",
				backgroundColor: "rgb(255, 99, 132)",
				fill: false,
				
			}, { 
				data: book_publications,
				label: "BOOK PUBLICATIONS",
				borderColor: "rgb(255, 205, 86)",
				backgroundColor: "rgb(255, 205, 86)",
				fill: false,
			}, { 
				data: patent,
				label: "PATENT",
				borderColor: "rgb(54, 162, 235)",
				backgroundColor:"rgb(54, 162, 235)",
				fill: false,
			}, { 
				data: conference,
				label: "CONFERENCES",
				borderColor: "#3cba9f",
				backgroundColor:"#3cba9f",
				fill: false,
			}, { 
				data: copyright,
				label: "COPYRIGHT",
				borderColor: "#bc5090",
				backgroundColor:"#bc5090",
				fill: false,
			}, { 
				data: journal,
				label: "JOURNAL",
				borderColor: "#58508d",
				backgroundColor:"#58508d",
				fill: false,
			}
			]
		},
	});
 
</script>