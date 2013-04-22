<?php
class ModelCatalogOrder extends Model {
    
	public function addOrder($post) {
	    
        $name = $this->db->escape($post['customerName']);
        $phone = $this->db->escape($post['telephoneNumber']);
        $mail = $this->db->escape($post['email']);
        $peoples = $this->db->escape($post['otherPeople']);
        $service = $this->db->escape($post['services']);
        $wish = $this->db->escape($post['preferences']);
        $question = $this->db->escape($post['questions']);
        $term = $this->db->escape($post['terms']);
        $other_info = $this->db->escape($post['additionalInfo']);
	    
        $this->db->query("INSERT INTO " . DB_PREFIX . "product_order (`name`,`phone`,`mail`,`peoples`,`service`,`wish`,`question`,`term`,`other_info`, `date`)  
        VALUES ('".$name."','".$phone."','".$mail."','".$peoples."','".$service."','".$wish."','".$question."','".$term."','".$other_info."', NOW())");
        
	}
}
?>