<?php
	

	include("DBConnection.php");
	class Cart 
	{

	    protected $db;
	    private $_sku;
	    public function setSKU($sku) {
	        $this->_sku = $sku;
	    }

	    public function __construct() {
	        $this->db = new DBConnection();
	        $this->db = $this->db->returnConnection();
		}
		

	    // getAll Product 1
	    public function getAllProduct1() {
	    	try {
	    		$sql = "SELECT * FROM products where itemType = 'Switch' ";
			    $stmt = $this->db->prepare($sql);

			    $stmt->execute();
			    $result = $stmt->fetchAll(\PDO::FETCH_ASSOC);
	            return $result;
			} catch (Exception $e) {
			    die("Oh noes! There's an error in the query!");
			}
		}
		
	    // getAll Product 2
	    public function getAllProduct2() {
	    	try {
	    		$sql = "SELECT * FROM products where itemType = 'Fan' ";
			    $stmt = $this->db->prepare($sql);

			    $stmt->execute();
			    $result = $stmt->fetchAll(\PDO::FETCH_ASSOC);
	            return $result;
			} catch (Exception $e) {
			    die("Oh noes! There's an error in the query!");
			}
	    }
	    // getAll Product 3
	    public function getAllProduct3() {
	    	try {
	    		$sql = "SELECT * FROM products where itemType = 'Lights' ";
			    $stmt = $this->db->prepare($sql);

			    $stmt->execute();
			    $result = $stmt->fetchAll(\PDO::FETCH_ASSOC);
	            return $result;
			} catch (Exception $e) {
			    die("Oh noes! There's an error in the query!");
			}
	    }
	    // getAll Product 4
	    public function getAllProduct4() {
	    	try {
	    		$sql = "SELECT * FROM products where itemType = 'Wiring' ";
			    $stmt = $this->db->prepare($sql);

			    $stmt->execute();
			    $result = $stmt->fetchAll(\PDO::FETCH_ASSOC);
	            return $result;
			} catch (Exception $e) {
			    die("Oh noes! There's an error in the query!");
			}
		}
		
	    // getAll Product 5
	    public function getAllProduct5() {
	    	try {
	    		$sql = "SELECT * FROM products where itemType = 'MCB' ";
			    $stmt = $this->db->prepare($sql);

			    $stmt->execute();
			    $result = $stmt->fetchAll(\PDO::FETCH_ASSOC);
	            return $result;
			} catch (Exception $e) {
			    die("Oh noes! There's an error in the query!");
			}
	    }
	    // getAll Product 6
	    public function getAllProduct6() {
	    	try {
	    		$sql = "SELECT * FROM products where itemType = 'Others' ";
			    $stmt = $this->db->prepare($sql);

			    $stmt->execute();
			    $result = $stmt->fetchAll(\PDO::FETCH_ASSOC);
	            return $result;
			} catch (Exception $e) {
			    die("Oh noes! There's an error in the query!");
			}
	    }



	    // get Student
	    public function getProduct() {
	    	try {
	    		$sql = "SELECT * FROM products WHERE sku=:sku";
			    $stmt = $this->db->prepare($sql);
			    $data = [
			    	'sku' => $this->_sku
				];
			    $stmt->execute($data);
			    $result = $stmt->fetch(\PDO::FETCH_ASSOC);
	            return $result;
			} catch (Exception $e) {
			    die("Oh noes! There's an error in the query!");
			}
	    }

	}
	?>