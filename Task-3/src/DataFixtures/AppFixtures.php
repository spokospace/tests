<?php

namespace App\DataFixtures;

use App\Entity\Book;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Faker\Factory;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        // $product = new Product();
        // $manager->persist($product);

        // $manager->flush();

        $faker = Factory::create();

        for ($i = 0; $i < 50; $i++) {
            $book = new Book();
            $book->setTitle($faker->country);
            $book->setAuthor($faker->firstName);
            $book->setDescription($faker->address);
            $book->setPrice($faker->randomNumber(2));
            $book->setCode($faker->randomNumber(5));
            $manager->persist($book);
        }

        $manager->flush();
    }
}
