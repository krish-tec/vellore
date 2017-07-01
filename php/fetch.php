<?php

    include 'connection.php';
    date_default_timezone_set('Asia/Calcutta');
    $dateIndia = date("Y-m-d h:i:sA");

    $query = "SELECT * FROM device_status order by ID DESC";

    $res = mysqli_query($conn,$query);

     $result  = array();

    while ($row = mysqli_fetch_array($res))
    {

    	array_push($result, array('id' => $row['id'],
                                  'room_id' => $row['room_id'],
                                  'room_no' => $row['room_no'],
            	    			          'node' => $row['node'],
                        				  'pin' => $row['pin'],
                        				  'status' => $row['status'],
                        				  'date' => $row['time'],
                                  'action_by' => $row['action_by'],
                                  'conditionTime' => date_diff(date_create($row['time']),date_create($dateIndia))->format("%d days %h hours %i minutes")));
 
    }
    
       echo json_encode(array("result" => $result  ));

?>
