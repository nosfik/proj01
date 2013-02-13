<?php
class ModelTestTest extends Model {
  public function save($text) {
    $this->db->query("INSERT INTO `test` (text) VALUES('".$this->db->escape($text)."')");
  }
}
  