<?php

    include 'connection.php';
    date_default_timezone_set('Asia/Calcutta');
    $dateIndia = date("Y-m-d h:i:sA");

    $query = "SELECT t1.* FROM device_status t1 WHERE t1.time = (SELECT MAX(t2.time) FROM device_status t2 WHERE t2.room_no = t1.room_no) ORDER BY room_no";

    $res = mysqli_query($conn,$query);

    $result  = array();

    while ($row = mysqli_fetch_array($res))
    {

    	array_push($result, array('room_no' => $row['room_no'],
                                  'id' => $row['id'],
                                  'room_id' => $row['room_id'],
    	    			                  'node' => $row['node'],
                        				  'pin' => $row['pin'],
                        				  'status' => $row['status'],
                        				  'date' => $row['time'],
                                  'action_by' => $row['action_by'],
                                  'condition' => date_diff(date_create($row['time']),date_create($dateIndia))->format("%d days %h hours %i minutes")));
 
    }
    sort($result);
    echo json_encode(array("result" => $result  ));

?>
