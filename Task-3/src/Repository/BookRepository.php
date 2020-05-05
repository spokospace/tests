<?php

namespace App\Repository;

use App\Entity\Book;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;
use Doctrine\ORM\EntityManagerInterface;

/**
 * @method Book|null find($id, $lockMode = null, $lockVersion = null)
 * @method Book|null findOneBy(array $criteria, array $orderBy = null)
 * @method Book[]    findAll()
 * @method Book[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BookRepository extends ServiceEntityRepository
{
    private $manager;

    public function __construct
    (
        ManagerRegistry $registry,
        EntityManagerInterface $manager
    )
    {
        parent::__construct($registry, Book::class);
        $this->manager = $manager;
    }

    public function saveBook($title, $author, $description, $price, $code)
    {
        $newBook = new Book();

        $newBook
            ->setTitle($title)
            ->setAuthor($author)
            ->setDescription($description)
            ->setPrice($price)
            ->setCode($code);

        $this->manager->persist($newBook);
        $this->manager->flush();
    }

    public function updateBook(Book $book, $data)
    {
        empty($data['title']) ? true : $book->setTitle($data['title']);
        empty($data['author']) ? true : $book->setAuthor($data['author']);
        empty($data['description']) ? true : $book->setDescription($data['description']);
        empty($data['price']) ? true : $book->setPrice($data['price']);
        empty($data['code']) ? true : $book->setCode($data['code']);

        $this->manager->flush();
    }

    public function removeBook(Book $book)
    {
        $this->manager->remove($book);
        $this->manager->flush();
    }
}
