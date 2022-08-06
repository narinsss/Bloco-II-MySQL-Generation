package com.narin.Joguitostore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.narin.Joguitostore.model.Produto;
import com.narin.Joguitostore.repository.ProdutoRepository;

@RestController
@RequestMapping("/produto")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class ProdutoController {
	@Autowired
	private ProdutoRepository repositoryP;
	
	@GetMapping
	public ResponseEntity<List<Produto>> getAll(){
		return ResponseEntity.ok(repositoryP.findAll());
	}

	public ProdutoRepository getRepositoryP() {
		return repositoryP;
	}
	public void setRepositoryP(ProdutoRepository repositoryP) {
		this.repositoryP = repositoryP;
	}
}
