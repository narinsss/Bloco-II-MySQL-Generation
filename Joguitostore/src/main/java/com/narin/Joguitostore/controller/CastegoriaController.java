package com.narin.Joguitostore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.narin.Joguitostore.model.Categoria;
import com.narin.Joguitostore.repository.CategoriaRepository;

@RestController
@RequestMapping("/categoria")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class CastegoriaController {
	@Autowired
	private CategoriaRepository repositoryC;
	
	@GetMapping
	public ResponseEntity<List<Categoria>> getAll(){
		return ResponseEntity.ok(repositoryC.findAll());
	}

	public CategoriaRepository getRepositoryC() {
		return repositoryC;
	}

	public void setRepositoryC(CategoriaRepository repositoryC) {
		this.repositoryC = repositoryC;
	}
}
