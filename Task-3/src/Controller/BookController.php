<?php

namespace App\Controller;

use App\Repository\BookRepository;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Class BookSiteController
 * @package App\Controller
 *
 * @Route(path="/book")
 */
class BookController
{
    private $bookRepository;

    public function __construct(BookRepository $bookRepository)
    {
        $this->bookRepository = $bookRepository;
    }

    /**
     * @Route("/add", name="add_book", methods={"POST"})
     */
    public function addBook(Request $request): JsonResponse
    {
        $data = json_decode($request->getContent(), true);

        $title = $data['title'];
        $author = $data['author'];
        $description = $data['description'];
        $price = $data['price'];
        $code = $data['code'];

        if (empty($title) || empty($author) || empty($description) || empty($price) || empty($code)) {
            throw new NotFoundHttpException('Expecting mandatory parameters!');
        }

        $this->bookRepository->saveBook($title, $author, $description, $price, $code);

        return new JsonResponse(['status' => 'Book added!'], Response::HTTP_CREATED);
    }

    /**
     * @Route("/get/{id}", name="get_one_book", methods={"GET"})
     */
    public function getOneBook($id): JsonResponse
    {
        $book = $this->bookRepository->findOneBy(['id' => $id]);

        $data = [
            'id' => $book->getId(),
            'title' => $book->getTitle(),
            'author' => $book->getAuthor(),
            'description' => $book->getDescription(),
            'price' => $book->getPrice(),
            'code' => $book->getCode(),
        ];

        return new JsonResponse(['book' => $data], Response::HTTP_OK);
    }

    /**
     * @Route("/get-all", name="get_all_books", methods={"GET"})
     */
    public function getAllBooks(): JsonResponse
    {
        $books = $this->bookRepository->findAll();
        $data = [];

        foreach ($books as $book) {
            $data[] = [
                'id' => $book->getId(),
                'title' => $book->getTitle(),
                'author' => $book->getAuthor(),
                'description' => $book->getDescription(),
                'price' => $book->getPrice(),
                'code' => $book->getCode(),
            ];
        }

        return new JsonResponse(['books' => $data], Response::HTTP_OK);
    }

    /**
     * @Route("/update/{id}", name="update_book", methods={"PUT"})
     */
    public function updateBook($id, Request $request): JsonResponse
    {
        $book = $this->bookRepository->findOneBy(['id' => $id]);
        $data = json_decode($request->getContent(), true);

        $this->bookRepository->updateBook($book, $data);

        return new JsonResponse(['status' => 'book updated!']);
    }

    /**
     * @Route("/delete/{id}", name="delete_book", methods={"DELETE"})
     */
    public function deleteBook($id): JsonResponse
    {
        $book = $this->bookRepository->findOneBy(['id' => $id]);

        $this->bookRepository->removeBook($book);

        return new JsonResponse(['status' => 'book deleted']);
    }
}
