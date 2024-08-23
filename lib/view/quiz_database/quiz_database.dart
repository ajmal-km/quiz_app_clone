class QuizDatabase {
  static List questions = [
    {
      "question": "What is the capital of France?",
      "options": ["Berlin", "Madrid", "Paris", "Rome"],
      "answer": 2, // Index of the correct answer ("Paris")
    },
    {
      "question": "Which planet is known as the Red Planet?",
      "options": ["Earth", "Mars", "Jupiter", "Saturn"],
      "answer": 1, // Index of the correct answer ("Mars")
    },
    {
      "question": "What is the largest ocean on Earth?",
      "options": [
        "Atlantic Ocean",
        "Indian Ocean",
        "Arctic Ocean",
        "Pacific Ocean"
      ],
      "answer": 3, // Index of the correct answer ("Pacific Ocean")
    },
    {
      "question": "Who wrote 'To Kill a Mockingbird'?",
      "options": [
        "Harper Lee",
        "Mark Twain",
        "Ernest Hemingway",
        "F. Scott Fitzgerald"
      ],
      "answer": 0, // Index of the correct answer ("Harper Lee")
    },
    {
      "question": "What is the chemical symbol for gold?",
      "options": ["Au", "Ag", "Pb", "Fe"],
      "answer": 0, // Index of the correct answer ("Au")
    },
    {
      "question": "What year did the Titanic sink?",
      "options": ["1912", "1905", "1898", "1923"],
      "answer": 0, // Index of the correct answer ("1912")
    },
    {
      "question": "Who painted the Mona Lisa?",
      "options": [
        "Vincent Van Gogh",
        "Pablo Picasso",
        "Leonardo da Vinci",
        "Claude Monet"
      ],
      "answer": 2, // Index of the correct answer ("Leonardo da Vinci")
    },
    {
      "question": "What is the hardest natural substance on Earth?",
      "options": ["Gold", "Iron", "Diamond", "Platinum"],
      "answer": 2, // Index of the correct answer ("Diamond")
    },
    {
      "question": "How many continents are there on Earth?",
      "options": ["5", "6", "7", "8"],
      "answer": 2, // Index of the correct answer ("7")
    },
    {
      "question": "What is the largest mammal in the world?",
      "options": [
        "African Elephant",
        "Blue Whale",
        "Giraffe",
        "Great White Shark"
      ],
      "answer": 1, // Index of the correct answer ("Blue Whale")
    },
  ];

  

  static List quizList = [
    {
      "name": "Sports",
      "list": [
        {
          "question": "Which country won the FIFA World Cup in 2018?",
          "options": ["Brazil", "Germany", "France", "Argentina"],
          "answer": 2,
        },
        {
          "question":
              "Which team holds the record for the most NBA championships?",
          "options": [
            "Chicago Bulls",
            "Los Angeles Lakers",
            "Boston Celtics",
            "Miami Heat"
          ],
          "answer": 2,
        },
        {
          "question":
              "In which year did Usain Bolt set the world record for the 100 meters?",
          "options": ["2008", "2009", "2012", "2016"],
          "answer": 1,
        },
        {
          "question": "Which sport is known as the 'king of sports'?",
          "options": ["Basketball", "Football", "Tennis", "Cricket"],
          "answer": 1,
        },
        {
          "question":
              "Who is considered the greatest tennis player of all time?",
          "options": [
            "Roger Federer",
            "Rafael Nadal",
            "Serena Williams",
            "Novak Djokovic"
          ],
          "answer": 0,
        },
        {
          "question": "Which country is known for the sport of sumo wrestling?",
          "options": ["China", "South Korea", "Japan", "Thailand"],
          "answer": 2,
        },
        {
          "question":
              "What is the standard number of players on a soccer team?",
          "options": ["7", "9", "11", "13"],
          "answer": 2,
        },
        {
          "question": "In which city did the 2016 Summer Olympics take place?",
          "options": ["London", "Beijing", "Rio de Janeiro", "Sydney"],
          "answer": 2,
        },
        {
          "question":
              "What is the maximum number of players allowed on a baseball team roster?",
          "options": ["20", "25", "30", "40"],
          "answer": 3,
        },
        {
          "question": "Which sport involves hitting a shuttlecock over a net?",
          "options": ["Volleyball", "Tennis", "Badminton", "Table Tennis"],
          "answer": 2,
        },
        {
          "question": "What is the term for a score of zero in tennis?",
          "options": ["Love", "Nil", "Zero", "Blank"],
          "answer": 0,
        },
        {
          "question": "Which country is famous for the sport of ice hockey?",
          "options": ["Sweden", "Brazil", "Australia", "Nigeria"],
          "answer": 0,
        },
        {
          "question":
              "Who holds the record for the most goals scored in World Cup history?",
          "options": [
            "Pele",
            "Cristiano Ronaldo",
            "Miroslav Klose",
            "Lionel Messi"
          ],
          "answer": 2,
        },
        {
          "question": "What is the length of a standard marathon race?",
          "options": ["20 miles", "26.2 miles", "30 miles", "42.2 miles"],
          "answer": 1,
        },
        {
          "question": "Which sport uses the terms 'break' and 'rack'?",
          "options": ["Snooker", "Pool", "Billiards", "Darts"],
          "answer": 1,
        },
      ],
    },
    {
      "name": "Chemistry",
      "list": [
        {
          "question": "What is the chemical symbol for water?",
          "options": ["O2", "H2O", "CO2", "NaCl"],
          "answer": 1,
        },
        {
          "question": "Which element has the atomic number 1?",
          "options": ["Helium", "Hydrogen", "Oxygen", "Carbon"],
          "answer": 1,
        },
        {
          "question": "What is the pH value of pure water at 25°C?",
          "options": ["1", "7", "14", "0"],
          "answer": 1,
        },
        {
          "question": "What is the chemical formula for table salt?",
          "options": ["H2SO4", "NaCl", "HCl", "CO2"],
          "answer": 1,
        },
        {
          "question": "Which gas is used in balloons to make them float?",
          "options": ["Oxygen", "Hydrogen", "Helium", "Nitrogen"],
          "answer": 2,
        },
        {
          "question":
              "What type of bond is formed by the sharing of electrons?",
          "options": ["Ionic", "Covalent", "Metallic", "Hydrogen"],
          "answer": 1,
        },
        {
          "question": "Which element is represented by the symbol 'Au'?",
          "options": ["Silver", "Gold", "Iron", "Copper"],
          "answer": 1,
        },
        {
          "question": "What is the most abundant gas in Earth's atmosphere?",
          "options": ["Oxygen", "Hydrogen", "Nitrogen", "Carbon Dioxide"],
          "answer": 2,
        },
        {
          "question":
              "What type of reaction occurs when an acid and a base react to form water and a salt?",
          "options": ["Redox", "Combustion", "Neutralization", "Decomposition"],
          "answer": 2,
        },
        {
          "question": "What is the chemical formula for methane?",
          "options": ["CH4", "C2H6", "C3H8", "C4H10"],
          "answer": 0,
        },
        {
          "question": "Which element is known for its use in pencils?",
          "options": ["Graphite", "Diamond", "Lead", "Iron"],
          "answer": 0,
        },
        {
          "question":
              "What is the process of heating a substance to a high temperature to cause a chemical change called?",
          "options": [
            "Evaporation",
            "Distillation",
            "Sublimation",
            "Thermal Decomposition"
          ],
          "answer": 3,
        },
        {
          "question": "Which of the following is a noble gas?",
          "options": ["Oxygen", "Nitrogen", "Neon", "Hydrogen"],
          "answer": 2,
        },
        {
          "question":
              "What is the name of the scientist who proposed the periodic table of elements?",
          "options": [
            "Albert Einstein",
            "Niels Bohr",
            "Dmitri Mendeleev",
            "Marie Curie"
          ],
          "answer": 2,
        },
        {
          "question": "Which acid is found in citrus fruits?",
          "options": [
            "Sulfuric Acid",
            "Nitric Acid",
            "Citric Acid",
            "Acetic Acid"
          ],
          "answer": 2,
        },
        {
          "question":
              "What is the common name for the substance with the chemical formula H2O2?",
          "options": [
            "Hydrochloric Acid",
            "Hydrogen Peroxide",
            "Sulfuric Acid",
            "Ammonia"
          ],
          "answer": 1,
        },
      ],
    },
    {
      "name": "Math",
      "list": [
        {
          "question": "What is the value of π (pi) to two decimal places?",
          "options": ["2.14", "3.14", "4.14", "3.41"],
          "answer": 1,
        },
        {
          "question": "What is the square root of 64?",
          "options": ["6", "7", "8", "9"],
          "answer": 2,
        },
        {
          "question": "What is the formula for the area of a circle?",
          "options": ["πr^2", "2πr", "πd", "2πr^2"],
          "answer": 0,
        },
        {
          "question": "What is the value of 5 factorial (5!)?",
          "options": ["120", "60", "24", "10"],
          "answer": 0,
        },
        {
          "question": "What is the sum of the angles in a triangle?",
          "options": [
            "180 degrees",
            "90 degrees",
            "360 degrees",
            "270 degrees"
          ],
          "answer": 0,
        },
        {
          "question": "What is the solution to the equation 2x + 3 = 7?",
          "options": ["2", "3", "4", "5"],
          "answer": 2,
        },
        {
          "question": "What is the value of the cosine of 0 degrees?",
          "options": ["0", "1", "-1", "Undefined"],
          "answer": 1,
        },
        {
          "question":
              "What is the next number in the sequence 2, 4, 8, 16, ...?",
          "options": ["20", "24", "32", "40"],
          "answer": 2,
        },
        {
          "question":
              "What is the hypotenuse of a right triangle with legs of length 3 and 4?",
          "options": ["5", "6", "7", "8"],
          "answer": 0,
        },
        {
          "question": "What is the median of the data set 2, 5, 9, 4, 7?",
          "options": ["4", "5", "7", "9"],
          "answer": 1,
        },
        {
          "question":
              "In probability, what is the probability of rolling a 3 on a fair six-sided die?",
          "options": ["1/6", "1/3", "1/4", "1/2"],
          "answer": 0,
        },
        {
          "question": "What is the sum of the first 10 positive integers?",
          "options": ["45", "50", "55", "60"],
          "answer": 1,
        },
        {
          "question": "What is the value of 7 cubed (7^3)?",
          "options": ["343", "224", "512", "216"],
          "answer": 0,
        },
        {
          "question": "What is the name of a polygon with 8 sides?",
          "options": ["Hexagon", "Heptagon", "Octagon", "Nonagon"],
          "answer": 2,
        },
        {
          "question": "What is the volume formula for a rectangular prism?",
          "options": ["l × w × h", "2(l + w + h)", "l × w", "πr^2h"],
          "answer": 0,
        },
        {
          "question":
              "What is the slope of the line represented by the equation y = 2x + 5?",
          "options": ["2", "5", "-2", "-5"],
          "answer": 0,
        },
      ],
    },
    {
      "name": "History",
      "list": [
        {
          "question": "Who was the first President of the United States?",
          "options": [
            "Thomas Jefferson",
            "George Washington",
            "Abraham Lincoln",
            "John Adams"
          ],
          "answer": 1,
        },
        {
          "question": "What year did the Titanic sink?",
          "options": ["1910", "1912", "1914", "1916"],
          "answer": 1,
        },
        {
          "question": "Which empire was ruled by Julius Caesar?",
          "options": [
            "Roman Empire",
            "Ottoman Empire",
            "British Empire",
            "Mongol Empire"
          ],
          "answer": 0,
        },
        {
          "question": "What event started World War I?",
          "options": [
            "The sinking of the Lusitania",
            "The assassination of Archduke Franz Ferdinand",
            "The invasion of Poland",
            "The bombing of Pearl Harbor"
          ],
          "answer": 1,
        },
        {
          "question": "Who was the first woman to win a Nobel Prize?",
          "options": [
            "Marie Curie",
            "Rosalind Franklin",
            "Ada Lovelace",
            "Elizabeth Blackwell"
          ],
          "answer": 0,
        },
        {
          "question": "Which ancient civilization built the pyramids of Giza?",
          "options": ["Mesopotamians", "Greeks", "Romans", "Egyptians"],
          "answer": 3,
        },
        {
          "question":
              "What was the name of the ship that carried the Pilgrims to America in 1620?",
          "options": [
            "The Mayflower",
            "The Nina",
            "The Santa Maria",
            "The Pinta"
          ],
          "answer": 0,
        },
        {
          "question":
              "Which war was fought between the North and South regions in the United States?",
          "options": [
            "The Revolutionary War",
            "The War of 1812",
            "The Civil War",
            "World War I"
          ],
          "answer": 2,
        },
        {
          "question":
              "Who was the leader of the Soviet Union during World War II?",
          "options": [
            "Vladimir Lenin",
            "Joseph Stalin",
            "Leon Trotsky",
            "Nikita Khrushchev"
          ],
          "answer": 1,
        },
        {
          "question": "What was the primary language spoken in Ancient Rome?",
          "options": ["Latin", "Greek", "Hebrew", "Aramaic"],
          "answer": 0,
        },
        {
          "question": "Which treaty ended World War I?",
          "options": [
            "Treaty of Versailles",
            "Treaty of Paris",
            "Treaty of Ghent",
            "Treaty of Berlin"
          ],
          "answer": 0,
        },
        {
          "question":
              "What famous structure was completed in 1889 for the Paris World's Fair?",
          "options": [
            "The Louvre",
            "The Eiffel Tower",
            "The Colosseum",
            "The Big Ben"
          ],
          "answer": 1,
        },
        {
          "question":
              "Which U.S. President issued the Emancipation Proclamation?",
          "options": [
            "Andrew Johnson",
            "Abraham Lincoln",
            "Ulysses S. Grant",
            "Theodore Roosevelt"
          ],
          "answer": 1,
        },
        {
          "question":
              "Who was the famous leader of the Mongol Empire in the 13th century?",
          "options": [
            "Kublai Khan",
            "Genghis Khan",
            "Attila the Hun",
            "Alexander the Great"
          ],
          "answer": 1,
        },
        {
          "question":
              "Which famous explorer is credited with discovering America in 1492?",
          "options": [
            "Ferdinand Magellan",
            "Christopher Columbus",
            "Hernán Cortés",
            "Vasco da Gama"
          ],
          "answer": 1,
        },
        {
          "question":
              "What was the name of the first manned moon landing mission?",
          "options": ["Apollo 11", "Apollo 12", "Apollo 13", "Apollo 14"],
          "answer": 0,
        },
        {
          "question":
              "Which empire was known for its advanced use of aqueducts and roads?",
          "options": [
            "Roman Empire",
            "Byzantine Empire",
            "Ottoman Empire",
            "Mughal Empire"
          ],
          "answer": 0,
        },
      ],
    },
    {
      "name": "Biological",
      "list": [
        {
          "question": "What is the basic unit of life?",
          "options": ["Atom", "Molecule", "Cell", "Tissue"],
          "answer": 2,
        },
        {
          "question": "Which organelle is known as the powerhouse of the cell?",
          "options": [
            "Nucleus",
            "Ribosome",
            "Mitochondria",
            "Endoplasmic Reticulum"
          ],
          "answer": 2,
        },
        {
          "question":
              "What is the process by which cells divide to produce two identical daughter cells?",
          "options": ["Mitosis", "Meiosis", "Fertilization", "Binary Fission"],
          "answer": 0,
        },
        {
          "question":
              "What molecule carries genetic information in most organisms?",
          "options": ["RNA", "DNA", "ATP", "Proteins"],
          "answer": 1,
        },
        {
          "question":
              "Which part of the plant is responsible for photosynthesis?",
          "options": ["Roots", "Stem", "Leaves", "Flowers"],
          "answer": 2,
        },
        {
          "question":
              "What is the main function of the red blood cells in humans?",
          "options": [
            "Digest food",
            "Transport oxygen",
            "Fight infections",
            "Clot blood"
          ],
          "answer": 1,
        },
        {
          "question":
              "Which process describes the conversion of glucose into energy in the presence of oxygen?",
          "options": [
            "Photosynthesis",
            "Cellular Respiration",
            "Fermentation",
            "Glycolysis"
          ],
          "answer": 1,
        },
        {
          "question":
              "What type of bond holds the two strands of a DNA molecule together?",
          "options": [
            "Ionic Bond",
            "Covalent Bond",
            "Hydrogen Bond",
            "Disulfide Bond"
          ],
          "answer": 2,
        },
        {
          "question":
              "Which system in the human body is responsible for producing hormones?",
          "options": [
            "Nervous System",
            "Circulatory System",
            "Endocrine System",
            "Digestive System"
          ],
          "answer": 2,
        },
        {
          "question":
              "What is the primary function of the ribosomes in a cell?",
          "options": [
            "Protein synthesis",
            "Energy production",
            "Genetic material storage",
            "Cell division"
          ],
          "answer": 0,
        },
        {
          "question":
              "Which organ in the human body is responsible for filtering blood and producing urine?",
          "options": ["Liver", "Heart", "Lungs", "Kidneys"],
          "answer": 3,
        },
        {
          "question":
              "What is the name of the pigment responsible for the color of plants?",
          "options": ["Chlorophyll", "Carotene", "Hemoglobin", "Melanin"],
          "answer": 0,
        },
        {
          "question":
              "Which type of RNA carries the genetic code from DNA to the ribosome?",
          "options": ["tRNA", "mRNA", "rRNA", "sRNA"],
          "answer": 1,
        },
        {
          "question":
              "What term describes the variety of different species in an ecosystem?",
          "options": [
            "Biodiversity",
            "Population Density",
            "Ecological Niche",
            "Carrying Capacity"
          ],
          "answer": 0,
        },
        {
          "question":
              "What is the term for a group of organisms of the same species living in the same area?",
          "options": ["Community", "Ecosystem", "Population", "Habitat"],
          "answer": 2,
        },
        {
          "question":
              "Which biological macromolecule is primarily responsible for storing and transmitting genetic information?",
          "options": ["Proteins", "Carbohydrates", "Lipids", "Nucleic Acids"],
          "answer": 3,
        },
        {
          "question":
              "In which part of the cell does cellular respiration occur?",
          "options": [
            "Nucleus",
            "Cytoplasm",
            "Mitochondria",
            "Golgi Apparatus"
          ],
          "answer": 2,
        },
      ],
    },
    {
      "name": "Geography",
      "list": [
        {
          "question": "What is the largest continent by land area?",
          "options": ["Africa", "Asia", "Europe", "North America"],
          "answer": 1,
        },
        {
          "question": "Which river is the longest in the world?",
          "options": [
            "Amazon River",
            "Nile River",
            "Yangtze River",
            "Mississippi River"
          ],
          "answer": 1,
        },
        {
          "question": "What is the capital city of Australia?",
          "options": ["Sydney", "Melbourne", "Canberra", "Brisbane"],
          "answer": 2,
        },
        {
          "question": "Which desert is the largest hot desert in the world?",
          "options": [
            "Sahara Desert",
            "Gobi Desert",
            "Kalahari Desert",
            "Mojave Desert"
          ],
          "answer": 0,
        },
        {
          "question": "What is the smallest country in the world by land area?",
          "options": ["Monaco", "Vatican City", "San Marino", "Liechtenstein"],
          "answer": 1,
        },
        {
          "question": "Which mountain range separates Europe and Asia?",
          "options": ["Andes", "Rockies", "Himalayas", "Ural Mountains"],
          "answer": 3,
        },
        {
          "question":
              "What is the name of the longest mountain range in the world?",
          "options": ["Andes", "Himalayas", "Rockies", "Alps"],
          "answer": 0,
        },
        {
          "question": "Which ocean is the largest by surface area?",
          "options": [
            "Atlantic Ocean",
            "Indian Ocean",
            "Arctic Ocean",
            "Pacific Ocean"
          ],
          "answer": 3,
        },
        {
          "question": "Which country is known as the Land of the Rising Sun?",
          "options": ["China", "Japan", "South Korea", "Thailand"],
          "answer": 1,
        },
        {
          "question": "What is the capital of Canada?",
          "options": ["Toronto", "Vancouver", "Montreal", "Ottawa"],
          "answer": 3,
        },
        {
          "question": "Which country is both in Europe and Asia?",
          "options": ["Turkey", "Egypt", "Saudi Arabia", "Iran"],
          "answer": 0,
        },
        {
          "question": "What is the largest island in the world?",
          "options": ["Australia", "Greenland", "New Guinea", "Borneo"],
          "answer": 1,
        },
        {
          "question":
              "Which river flows through Egypt and is crucial to its agriculture?",
          "options": [
            "Nile River",
            "Amazon River",
            "Tigris River",
            "Euphrates River"
          ],
          "answer": 0,
        },
        {
          "question": "Which continent is known for having the most countries?",
          "options": ["Asia", "Africa", "Europe", "South America"],
          "answer": 1,
        },
        {
          "question":
              "What is the name of the imaginary line that divides the Earth into Northern and Southern Hemispheres?",
          "options": [
            "Prime Meridian",
            "Equator",
            "Tropic of Cancer",
            "Arctic Circle"
          ],
          "answer": 1,
        },
        {
          "question": "Which city is known as the City of Canals?",
          "options": ["Amsterdam", "Venice", "Paris", "Bangkok"],
          "answer": 1,
        },
        {
          "question":
              "What is the name of the world's largest coral reef system?",
          "options": [
            "Great Barrier Reef",
            "Belize Barrier Reef",
            "Red Sea Coral Reef",
            "New Caledonian Reef"
          ],
          "answer": 0,
        },
      ],
    }
  ];
}
