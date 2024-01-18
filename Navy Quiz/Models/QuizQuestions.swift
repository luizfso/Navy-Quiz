import Foundation

struct QuizData {
    static let e4Questions: [String: [QuestionItem]] = [
        "Leadership and Character": [
            QuestionItem(questionText: "Which leadership style is characterized by actively involving team members in decision-making processes?", options: ["Autocratic", "Laissez-faire", "Democratic", "Transactional"], correctAnswer: "Democratic"),
            QuestionItem(questionText: "What should a Navy leader do when facing an ethical dilemma?", options: ["Follow personal judgment", "Consult senior officers", "Ignore the issue", "Refer to the Navy's ethical guidelines"], correctAnswer: "Refer to the Navy's ethical guidelines"),
            QuestionItem(questionText: "What is an effective method for motivating team members in a challenging situation?", options: ["Setting clear goals", "Reducing responsibilities", "Avoiding the situation", "Offering monetary rewards"], correctAnswer: "Setting clear goals"),
            QuestionItem(questionText: "What is a recommended first step in resolving conflicts among team members?", options: ["Immediate disciplinary action", "Ignoring the conflict", "Open communication", "Assigning blame"], correctAnswer: "Open communication"),
            QuestionItem(questionText: "What is a key aspect of professional conduct in the Navy?", options: ["Personal convenience", "Making rapid decisions", "Adhering to regulations", "Focusing on individual achievements"], correctAnswer: "Adhering to regulations"),
            QuestionItem(questionText: "How can a Navy leader best serve as a role model?", options: ["By achieving personal success", "Maintaining high standards", "Focusing on competition", "Prioritizing personal life"], correctAnswer: "Maintaining high standards"),
            QuestionItem(questionText: "Which factor is most important in ethical decision-making?", options: ["Speed of decision", "Popular opinion", "Personal benefit", "Moral principles"], correctAnswer: "Moral principles"),
            QuestionItem(questionText: "What is a crucial element in building a strong naval team?", options: ["Frequent competition", "Trust and cooperation", "Individualism", "Minimal communication"], correctAnswer: "Trust and cooperation"),
            QuestionItem(questionText: "What is a key responsibility of a Navy leader regarding their team's actions?", options: ["Delegating all tasks", "Taking full accountability", "Blaming team members", "Ignoring mistakes"], correctAnswer: "Taking full accountability"),
            QuestionItem(questionText: "Why is integrity fundamental for a Navy leader?", options: ["Enhances personal reputation", "Ensures obedience", "Builds trust and respect", "Guarantees promotion"], correctAnswer: "Builds trust and respect"),
 
        ],
        "Career Information": [
            QuestionItem(questionText: "What program provides sailors with opportunities for additional training and advanced education?", options: ["Navy College Program", "Sailor 360", "Advanced Technical Education", "Seaman to Admiral"], correctAnswer: "Navy College Program"),
            QuestionItem(questionText: "Which document should be regularly updated to reflect a sailor's career achievements and qualifications?", options: ["Service Record", "Enlisted Evaluation", "Training Manual", "Personal Resume"], correctAnswer: "Service Record"),
            QuestionItem(questionText: "What is the primary purpose of the Navy's advancement exam?", options: ["Skill assessment", "Rank promotion", "Job placement", "Training evaluation"], correctAnswer: "Rank promotion"),
            QuestionItem(questionText: "Which program is designed for enlisted sailors to earn a commission as a Navy Officer?", options: ["ROTC", "Seaman to Admiral-21", "Navy College Program", "OCS"], correctAnswer: "Seaman to Admiral-21"),
            QuestionItem(questionText: "What is the significance of the Primary Navy Enlisted Classification (NEC)?", options: ["It indicates a sailor's pay grade", "It identifies a sailor's primary skill set", "It determines a sailor's duty station", "It records a sailor's service time"], correctAnswer: "It identifies a sailor's primary skill set"),
            QuestionItem(questionText: "How often are Performance Evaluations typically conducted for E-4 ranked sailors?", options: ["Monthly", "Annually", "Biannually", "Quarterly"], correctAnswer: "Annually"),
            QuestionItem(questionText: "What is a key factor in determining a sailor's eligibility for advancement to a higher pay grade?", options: ["Years of service", "Physical fitness score", "Performance Evaluation", "Age"], correctAnswer: "Performance Evaluation"),
            QuestionItem(questionText: "What program allows sailors to gain college credits while serving?", options: ["Tuition Assistance", "GI Bill", "Navy SMART", "Voluntary Education Program"], correctAnswer: "Tuition Assistance"),
            QuestionItem(questionText: "What term describes the process of moving from an enlisted sailor to a commissioned officer?", options: ["Cross-rating", "Commissioning", "Advancement", "Transitioning"], correctAnswer: "Commissioning"),
            QuestionItem(questionText: "What is the purpose of the Fleet Reserve in the context of a Navy career?", options: ["Temporary duty assignment", "Retirement status while retaining certain benefits", "Active duty training period", "Reserve force activation"], correctAnswer: "Retirement status while retaining certain benefits"),
            // ... additional questions for "Career Information"
        ],
        "Professional Conduct": [
            QuestionItem(questionText: "What document outlines the standards of conduct expected of all Navy personnel?", options: ["U.S. Constitution", "Code of Conduct", "Uniform Code of Military Justice", "Sailor's Creed"], correctAnswer: "Uniform Code of Military Justice"),
            QuestionItem(questionText: "Which behavior is considered a violation of Navy's fraternization policy?", options: ["Attending professional development courses", "Participating in command sports teams", "Personal relationships between officers and enlisted members", "Discussing work-related issues"], correctAnswer: "Personal relationships between officers and enlisted members"),
            QuestionItem(questionText: "What action should a sailor take if they witness a violation of Navy ethics?", options: ["Report to the nearest officer", "Ignore unless it affects them directly", "Document and report to the chain of command", "Discuss it with peers only"], correctAnswer: "Document and report to the chain of command"),
            QuestionItem(questionText: "What is the primary purpose of Equal Opportunity (EO) programs in the Navy?", options: ["Promote personal friendships", "Facilitate career advancements", "Ensure fair treatment of all personnel", "Focus on physical fitness"], correctAnswer: "Ensure fair treatment of all personnel"),
            QuestionItem(questionText: "How often must Navy personnel complete Sexual Assault Prevention and Response (SAPR) training?", options: ["Annually", "Biannually", "Once at enlistment", "Every five years"], correctAnswer: "Annually"),
            QuestionItem(questionText: "What is the appropriate course of action when dealing with classified information?", options: ["Share with family for support", "Discuss openly in public areas", "Protect and handle per security guidelines", "Store in personal devices for safety"], correctAnswer: "Protect and handle per security guidelines"),
            QuestionItem(questionText: "What is the Navy's policy on drug use among its personnel?", options: ["Zero tolerance", "Allowed with restrictions", "Permitted off-duty", "Subject to annual review"], correctAnswer: "Zero tolerance"),
            QuestionItem(questionText: "What is the first step in the Navy's Grievance Procedure?", options: ["Filing a formal complaint", "Discussing the issue with a legal officer", "Attempting resolution at the lowest possible level", "Requesting a transfer"], correctAnswer: "Attempting resolution at the lowest possible level"),
            QuestionItem(questionText: "Which core value is emphasized in Navy's professional conduct standards?", options: ["Innovation", "Honor", "Competition", "Efficiency"], correctAnswer: "Honor"),
            QuestionItem(questionText: "In the context of Navy leadership, what is the significance of 'Leading by Example'?", options: ["Delegating all tasks", "Prioritizing personal goals", "Influencing others through personal actions and behavior", "Focusing on individual achievements"], correctAnswer: "Influencing others through personal actions and behavior"),
            // ... additional questions for "Professional Conduct"
        ],
        "Naval Heritage": [
            QuestionItem(questionText: "What year was the U.S. Navy officially established?", options: ["1775", "1812", "1861", "1941"], correctAnswer: "1775"),
            QuestionItem(questionText: "Who is known as the 'Father of the American Navy'?", options: ["John Paul Jones", "Stephen Decatur", "John F. Kennedy", "David Farragut"], correctAnswer: "John Paul Jones"),
            QuestionItem(questionText: "Which battle is considered the turning point of the Pacific War in World War II?", options: ["Battle of Midway", "Battle of the Coral Sea", "Battle of Iwo Jima", "Pearl Harbor Attack"], correctAnswer: "Battle of Midway"),
            QuestionItem(questionText: "What was the first commissioned ship of the U.S. Navy?", options: ["USS Constitution", "USS Enterprise", "USS Nautilus", "USS United States"], correctAnswer: "USS United States"),
            QuestionItem(questionText: "What is the oldest commissioned warship afloat in the world?", options: ["HMS Victory", "USS Constitution", "USS Missouri", "HMS Warrior"], correctAnswer: "USS Constitution"),
            QuestionItem(questionText: "Which of these slogans has been used by the U.S. Navy?", options: ["Always Faithful", "This We'll Defend", "A Global Force for Good", "Semper Paratus"], correctAnswer: "A Global Force for Good"),
            QuestionItem(questionText: "The U.S. Naval Academy is located in which city?", options: ["Annapolis, Maryland", "Norfolk, Virginia", "San Diego, California", "West Point, New York"], correctAnswer: "Annapolis, Maryland"),
            QuestionItem(questionText: "Who was the first woman to serve in the U.S. Navy?", options: ["Grace Hopper", "Loretta Perfectus Walsh", "Harriet Ida Pickens", "Mildred H. McAfee"], correctAnswer: "Loretta Perfectus Walsh"),
            QuestionItem(questionText: "What historical event led to the significant expansion of the U.S. Navy?", options: ["Civil War", "World War I", "Spanish-American War", "World War II"], correctAnswer: "World War II"),
            QuestionItem(questionText: "What was the primary role of the Navy during the Cold War era?", options: ["Coastal defense", "Piracy suppression", "Nuclear deterrence", "Peacekeeping missions"], correctAnswer: "Nuclear deterrence"),
            // ... additional questions for "Naval Heritage"
        ],
        "Seamanship": [
            QuestionItem(questionText: "What is the primary purpose of a ship's anchor?", options: ["To steer the ship", "To increase speed", "To hold the ship in place", "To detect other vessels"], correctAnswer: "To hold the ship in place"),
            QuestionItem(questionText: "What term describes the right side of a ship when facing forward?", options: ["Port", "Starboard", "Bow", "Stern"], correctAnswer: "Starboard"),
            QuestionItem(questionText: "What is the name of the navigational tool used to plot a ship's course on a chart?", options: ["Sextant", "Compass", "Divider", "Plotter"], correctAnswer: "Plotter"),
            QuestionItem(questionText: "What does the term 'mooring' refer to in seamanship?", options: ["Repairing the ship", "Loading cargo", "Securing the ship at a dock", "Turning the ship around"], correctAnswer: "Securing the ship at a dock"),
            QuestionItem(questionText: "What is the main function of a ship's rudder?", options: ["To stop the ship", "To control the ship's direction", "To increase speed", "To balance the ship"], correctAnswer: "To control the ship's direction"),
            QuestionItem(questionText: "In naval terminology, what is the 'bridge' of a ship?", options: ["The lowest deck", "The area for anchoring", "The command and control center", "The crew's sleeping quarters"], correctAnswer: "The command and control center"),
            QuestionItem(questionText: "What type of knot is commonly used to join two ropes of different sizes?", options: ["Square knot", "Bowline knot", "Sheet bend", "Reef knot"], correctAnswer: "Sheet bend"),
            QuestionItem(questionText: "What is the purpose of a ship's bilge pump?", options: ["To remove water from the lowest part of the hull", "To pump fuel to the engines", "To provide drinking water", "To cool the engine"], correctAnswer: "To remove water from the lowest part of the hull"),
            QuestionItem(questionText: "What is 'draft' in the context of naval seamanship?", options: ["The depth of water needed to float a ship", "A plan for a sea journey", "The height of a ship's mast", "The speed of a ship"], correctAnswer: "The depth of water needed to float a ship"),
            QuestionItem(questionText: "Which signal flag indicates a ship is reversing engines?", options: ["Bravo", "November", "India", "Foxtrot"], correctAnswer: "India"),
            // ... additional questions for "Seamanship"
        ]
    ]
    static let e5Questions: [String: [QuestionItem]] = [
        "Leadership and Character": [
            QuestionItem(questionText: "Question for E5", options: ["Autocratic", "Laissez-faire", "Democratic", "Transactional"], correctAnswer: "Democratic"),
            QuestionItem(questionText: "What should a Navy leader do when facing an ethical dilemma?", options: ["Follow personal judgment", "Consult senior officers", "Ignore the issue", "Refer to the Navy's ethical guidelines"], correctAnswer: "Refer to the Navy's ethical guidelines"),
            // ... additional questions for "Leadership and Character"
        ],
        "Career Information": [
            QuestionItem(questionText: "What program provides sailors with opportunities for additional training and advanced education?", options: ["Navy College Program", "Sailor 360", "Advanced Technical Education", "Seaman to Admiral"], correctAnswer: "Navy College Program"),
            QuestionItem(questionText: "Which document should be regularly updated to reflect a sailor's career achievements and qualifications?", options: ["Service Record", "Enlisted Evaluation", "Training Manual", "Personal Resume"], correctAnswer: "Service Record"),
            // ... additional questions for "Career Information"
        ],
        "Professional Conduct": [
            QuestionItem(questionText: "What document outlines the standards of conduct expected of all Navy personnel?", options: ["U.S. Constitution", "Code of Conduct", "Uniform Code of Military Justice", "Sailor's Creed"], correctAnswer: "Uniform Code of Military Justice"),
            QuestionItem(questionText: "Which behavior is considered a violation of Navy's fraternization policy?", options: ["Attending professional development courses", "Participating in command sports teams", "Personal relationships between officers and enlisted members", "Discussing work-related issues"], correctAnswer: "Personal relationships between officers and enlisted members"),
            // ... additional questions for "Professional Conduct"
        ],
        "Naval Heritage": [
            QuestionItem(questionText: "What year was the U.S. Navy officially established?", options: ["1775", "1812", "1861", "1941"], correctAnswer: "1775"),
            QuestionItem(questionText: "Who is known as the 'Father of the American Navy'?", options: ["John Paul Jones", "Stephen Decatur", "John F. Kennedy", "David Farragut"], correctAnswer: "John Paul Jones"),
            // ... additional questions for "Naval Heritage"
        ],
        "Seamanship": [
            QuestionItem(questionText: "What is the primary purpose of a ship's anchor?", options: ["To steer the ship", "To increase speed", "To hold the ship in place", "To detect other vessels"], correctAnswer: "To hold the ship in place"),
            QuestionItem(questionText: "What term describes the right side of a ship when facing forward?", options: ["Port", "Starboard", "Bow", "Stern"], correctAnswer: "Starboard"),
            // ... additional questions for "Seamanship"
        ]
    ]
    
    static let e6Questions: [String: [QuestionItem]] = [
        "Leadership and Character": [
            QuestionItem(questionText: "Question for E6", options: ["Autocratic", "Laissez-faire", "Democratic", "Transactional"], correctAnswer: "Democratic"),
            QuestionItem(questionText: "What should a Navy leader do when facing an ethical dilemma?", options: ["Follow personal judgment", "Consult senior officers", "Ignore the issue", "Refer to the Navy's ethical guidelines"], correctAnswer: "Refer to the Navy's ethical guidelines"),
            // ... additional questions for "Leadership and Character"
        ],
        "Career Information": [
            QuestionItem(questionText: "What program provides sailors with opportunities for additional training and advanced education?", options: ["Navy College Program", "Sailor 360", "Advanced Technical Education", "Seaman to Admiral"], correctAnswer: "Navy College Program"),
            QuestionItem(questionText: "Which document should be regularly updated to reflect a sailor's career achievements and qualifications?", options: ["Service Record", "Enlisted Evaluation", "Training Manual", "Personal Resume"], correctAnswer: "Service Record"),
            // ... additional questions for "Career Information"
        ],
        "Professional Conduct": [
            QuestionItem(questionText: "What document outlines the standards of conduct expected of all Navy personnel?", options: ["U.S. Constitution", "Code of Conduct", "Uniform Code of Military Justice", "Sailor's Creed"], correctAnswer: "Uniform Code of Military Justice"),
            QuestionItem(questionText: "Which behavior is considered a violation of Navy's fraternization policy?", options: ["Attending professional development courses", "Participating in command sports teams", "Personal relationships between officers and enlisted members", "Discussing work-related issues"], correctAnswer: "Personal relationships between officers and enlisted members"),
            // ... additional questions for "Professional Conduct"
        ],
        "Naval Heritage": [
            QuestionItem(questionText: "What year was the U.S. Navy officially established?", options: ["1775", "1812", "1861", "1941"], correctAnswer: "1775"),
            QuestionItem(questionText: "Who is known as the 'Father of the American Navy'?", options: ["John Paul Jones", "Stephen Decatur", "John F. Kennedy", "David Farragut"], correctAnswer: "John Paul Jones"),
            // ... additional questions for "Naval Heritage"
        ],
        "Seamanship": [
            QuestionItem(questionText: "What is the primary purpose of a ship's anchor?", options: ["To steer the ship", "To increase speed", "To hold the ship in place", "To detect other vessels"], correctAnswer: "To hold the ship in place"),
            QuestionItem(questionText: "What term describes the right side of a ship when facing forward?", options: ["Port", "Starboard", "Bow", "Stern"], correctAnswer: "Starboard"),
            // ... additional questions for "Seamanship"
        ]
    ]
    
    static let e7Questions: [String: [QuestionItem]] = [
        "Leadership and Character": [
            QuestionItem(questionText: "Question for E7", options: ["Autocratic", "Laissez-faire", "Democratic", "Transactional"], correctAnswer: "Democratic"),
            QuestionItem(questionText: "What should a Navy leader do when facing an ethical dilemma?", options: ["Follow personal judgment", "Consult senior officers", "Ignore the issue", "Refer to the Navy's ethical guidelines"], correctAnswer: "Refer to the Navy's ethical guidelines"),
            // ... additional questions for "Leadership and Character"
        ],
        "Career Information": [
            QuestionItem(questionText: "What program provides sailors with opportunities for additional training and advanced education?", options: ["Navy College Program", "Sailor 360", "Advanced Technical Education", "Seaman to Admiral"], correctAnswer: "Navy College Program"),
            QuestionItem(questionText: "Which document should be regularly updated to reflect a sailor's career achievements and qualifications?", options: ["Service Record", "Enlisted Evaluation", "Training Manual", "Personal Resume"], correctAnswer: "Service Record"),
            // ... additional questions for "Career Information"
        ],
        "Professional Conduct": [
            QuestionItem(questionText: "What document outlines the standards of conduct expected of all Navy personnel?", options: ["U.S. Constitution", "Code of Conduct", "Uniform Code of Military Justice", "Sailor's Creed"], correctAnswer: "Uniform Code of Military Justice"),
            QuestionItem(questionText: "Which behavior is considered a violation of Navy's fraternization policy?", options: ["Attending professional development courses", "Participating in command sports teams", "Personal relationships between officers and enlisted members", "Discussing work-related issues"], correctAnswer: "Personal relationships between officers and enlisted members"),
            // ... additional questions for "Professional Conduct"
        ],
        "Naval Heritage": [
            QuestionItem(questionText: "What year was the U.S. Navy officially established?", options: ["1775", "1812", "1861", "1941"], correctAnswer: "1775"),
            QuestionItem(questionText: "Who is known as the 'Father of the American Navy'?", options: ["John Paul Jones", "Stephen Decatur", "John F. Kennedy", "David Farragut"], correctAnswer: "John Paul Jones"),
            // ... additional questions for "Naval Heritage"
        ],
        "Seamanship": [
            QuestionItem(questionText: "What is the primary purpose of a ship's anchor?", options: ["To steer the ship", "To increase speed", "To hold the ship in place", "To detect other vessels"], correctAnswer: "To hold the ship in place"),
            QuestionItem(questionText: "What term describes the right side of a ship when facing forward?", options: ["Port", "Starboard", "Bow", "Stern"], correctAnswer: "Starboard"),
            // ... additional questions for "Seamanship"
        ]
    ]
}




//struct QuizData {
//    static let allQuestions: [String: [QuestionItem]] = [
//        "Leadership and Character": [
//            // Add your Leadership and Character questions
//            QuestionItem(questionText: "Which leadership style is characterized by actively involving team members in decision-making processes?", options: ["Autocratic", "Laissez-faire", "Democratic", "Transactional"], correctAnswer: "Democratic"),
//            QuestionItem(questionText: "What should a Navy leader do when facing an ethical dilemma?", options: ["Follow personal judgment", "Consult senior officers", "Ignore the issue", "Refer to the Navy's ethical guidelines"], correctAnswer: "Refer to the Navy's ethical guidelines"),
//            QuestionItem(questionText: "What is an effective method for motivating team members in a challenging situation?", options: ["Setting clear goals", "Reducing responsibilities", "Avoiding the situation", "Offering monetary rewards"], correctAnswer: "Setting clear goals"),
//            QuestionItem(questionText: "What is a recommended first step in resolving conflicts among team members?", options: ["Immediate disciplinary action", "Ignoring the conflict", "Open communication", "Assigning blame"], correctAnswer: "Open communication"),
//            QuestionItem(questionText: "What is a key aspect of professional conduct in the Navy?", options: ["Personal convenience", "Making rapid decisions", "Adhering to regulations", "Focusing on individual achievements"], correctAnswer: "Adhering to regulations"),
//            QuestionItem(questionText: "How can a Navy leader best serve as a role model?", options: ["By achieving personal success", "Maintaining high standards", "Focusing on competition", "Prioritizing personal life"], correctAnswer: "Maintaining high standards"),
//            QuestionItem(questionText: "Which factor is most important in ethical decision-making?", options: ["Speed of decision", "Popular opinion", "Personal benefit", "Moral principles"], correctAnswer: "Moral principles"),
//            QuestionItem(questionText: "What is a crucial element in building a strong naval team?", options: ["Frequent competition", "Trust and cooperation", "Individualism", "Minimal communication"], correctAnswer: "Trust and cooperation"),
//            QuestionItem(questionText: "What is a key responsibility of a Navy leader regarding their team's actions?", options: ["Delegating all tasks", "Taking full accountability", "Blaming team members", "Ignoring mistakes"], correctAnswer: "Taking full accountability"),
//            QuestionItem(questionText: "Why is integrity fundamental for a Navy leader?", options: ["Enhances personal reputation", "Ensures obedience", "Builds trust and respect", "Guarantees promotion"], correctAnswer: "Builds trust and respect")
//        ],
//        "Career Information": [
//            // Add your Career Information questions
//            QuestionItem(questionText: "What program provides sailors with opportunities for additional training and advanced education?", options: ["Navy College Program", "Sailor 360", "Advanced Technical Education", "Seaman to Admiral"], correctAnswer: "Navy College Program"),
//            QuestionItem(questionText: "Which document should be regularly updated to reflect a sailor's career achievements and qualifications?", options: ["Service Record", "Enlisted Evaluation", "Training Manual", "Personal Resume"], correctAnswer: "Service Record"),
//            QuestionItem(questionText: "What is the primary purpose of the Navy's advancement exam?", options: ["Skill assessment", "Rank promotion", "Job placement", "Training evaluation"], correctAnswer: "Rank promotion"),
//            QuestionItem(questionText: "Which program is designed for enlisted sailors to earn a commission as a Navy Officer?", options: ["ROTC", "Seaman to Admiral-21", "Navy College Program", "OCS"], correctAnswer: "Seaman to Admiral-21"),
//            QuestionItem(questionText: "What is the significance of the Primary Navy Enlisted Classification (NEC)?", options: ["It indicates a sailor's pay grade", "It identifies a sailor's primary skill set", "It determines a sailor's duty station", "It records a sailor's service time"], correctAnswer: "It identifies a sailor's primary skill set"),
//            QuestionItem(questionText: "How often are Performance Evaluations typically conducted for E-4 ranked sailors?", options: ["Monthly", "Annually", "Biannually", "Quarterly"], correctAnswer: "Annually"),
//            QuestionItem(questionText: "What is a key factor in determining a sailor's eligibility for advancement to a higher pay grade?", options: ["Years of service", "Physical fitness score", "Performance Evaluation", "Age"], correctAnswer: "Performance Evaluation"),
//            QuestionItem(questionText: "What program allows sailors to gain college credits while serving?", options: ["Tuition Assistance", "GI Bill", "Navy SMART", "Voluntary Education Program"], correctAnswer: "Tuition Assistance"),
//            QuestionItem(questionText: "What term describes the process of moving from an enlisted sailor to a commissioned officer?", options: ["Cross-rating", "Commissioning", "Advancement", "Transitioning"], correctAnswer: "Commissioning"),
//            QuestionItem(questionText: "What is the purpose of the Fleet Reserve in the context of a Navy career?", options: ["Temporary duty assignment", "Retirement status while retaining certain benefits", "Active duty training period", "Reserve force activation"], correctAnswer: "Retirement status while retaining certain benefits")
//        ],
//        
//        "Professional Conduct": [ 
//            QuestionItem(questionText: "What document outlines the standards of conduct expected of all Navy personnel?", options: ["U.S. Constitution", "Code of Conduct", "Uniform Code of Military Justice", "Sailor's Creed"], correctAnswer: "Uniform Code of Military Justice"),
//            QuestionItem(questionText: "Which behavior is considered a violation of Navy's fraternization policy?", options: ["Attending professional development courses", "Participating in command sports teams", "Personal relationships between officers and enlisted members", "Discussing work-related issues"], correctAnswer: "Personal relationships between officers and enlisted members"),
//            QuestionItem(questionText: "What action should a sailor take if they witness a violation of Navy ethics?", options: ["Report to the nearest officer", "Ignore unless it affects them directly", "Document and report to the chain of command", "Discuss it with peers only"], correctAnswer: "Document and report to the chain of command"),
//            QuestionItem(questionText: "What is the primary purpose of Equal Opportunity (EO) programs in the Navy?", options: ["Promote personal friendships", "Facilitate career advancements", "Ensure fair treatment of all personnel", "Focus on physical fitness"], correctAnswer: "Ensure fair treatment of all personnel"),
//            QuestionItem(questionText: "How often must Navy personnel complete Sexual Assault Prevention and Response (SAPR) training?", options: ["Annually", "Biannually", "Once at enlistment", "Every five years"], correctAnswer: "Annually"),
//            QuestionItem(questionText: "What is the appropriate course of action when dealing with classified information?", options: ["Share with family for support", "Discuss openly in public areas", "Protect and handle per security guidelines", "Store in personal devices for safety"], correctAnswer: "Protect and handle per security guidelines"),
//            QuestionItem(questionText: "What is the Navy's policy on drug use among its personnel?", options: ["Zero tolerance", "Allowed with restrictions", "Permitted off-duty", "Subject to annual review"], correctAnswer: "Zero tolerance"),
//            QuestionItem(questionText: "What is the first step in the Navy's Grievance Procedure?", options: ["Filing a formal complaint", "Discussing the issue with a legal officer", "Attempting resolution at the lowest possible level", "Requesting a transfer"], correctAnswer: "Attempting resolution at the lowest possible level"),
//            QuestionItem(questionText: "Which core value is emphasized in Navy's professional conduct standards?", options: ["Innovation", "Honor", "Competition", "Efficiency"], correctAnswer: "Honor"),
//            QuestionItem(questionText: "In the context of Navy leadership, what is the significance of 'Leading by Example'?", options: ["Delegating all tasks", "Prioritizing personal goals", "Influencing others through personal actions and behavior", "Focusing on individual achievements"], correctAnswer: "Influencing others through personal actions and behavior")
//        ],
//        "Naval Heritage": [
//            QuestionItem(questionText: "What year was the U.S. Navy officially established?", options: ["1775", "1812", "1861", "1941"], correctAnswer: "1775"),
//            QuestionItem(questionText: "Who is known as the 'Father of the American Navy'?", options: ["John Paul Jones", "Stephen Decatur", "John F. Kennedy", "David Farragut"], correctAnswer: "John Paul Jones"),
//            QuestionItem(questionText: "Which battle is considered the turning point of the Pacific War in World War II?", options: ["Battle of Midway", "Battle of the Coral Sea", "Battle of Iwo Jima", "Pearl Harbor Attack"], correctAnswer: "Battle of Midway"),
//            QuestionItem(questionText: "What was the first commissioned ship of the U.S. Navy?", options: ["USS Constitution", "USS Enterprise", "USS Nautilus", "USS United States"], correctAnswer: "USS United States"),
//            QuestionItem(questionText: "What is the oldest commissioned warship afloat in the world?", options: ["HMS Victory", "USS Constitution", "USS Missouri", "HMS Warrior"], correctAnswer: "USS Constitution"),
//            QuestionItem(questionText: "Which of these slogans has been used by the U.S. Navy?", options: ["Always Faithful", "This We'll Defend", "A Global Force for Good", "Semper Paratus"], correctAnswer: "A Global Force for Good"),
//            QuestionItem(questionText: "The U.S. Naval Academy is located in which city?", options: ["Annapolis, Maryland", "Norfolk, Virginia", "San Diego, California", "West Point, New York"], correctAnswer: "Annapolis, Maryland"),
//            QuestionItem(questionText: "Who was the first woman to serve in the U.S. Navy?", options: ["Grace Hopper", "Loretta Perfectus Walsh", "Harriet Ida Pickens", "Mildred H. McAfee"], correctAnswer: "Loretta Perfectus Walsh"),
//            QuestionItem(questionText: "What historical event led to the significant expansion of the U.S. Navy?", options: ["Civil War", "World War I", "Spanish-American War", "World War II"], correctAnswer: "World War II"),
//            QuestionItem(questionText: "What was the primary role of the Navy during the Cold War era?", options: ["Coastal defense", "Piracy suppression", "Nuclear deterrence", "Peacekeeping missions"], correctAnswer: "Nuclear deterrence")
//        ],
//        "Career Information": [ 
//            QuestionItem(questionText: "What is the primary purpose of a ship's anchor?", options: ["To steer the ship", "To increase speed", "To hold the ship in place", "To detect other vessels"], correctAnswer: "To hold the ship in place"),
//            QuestionItem(questionText: "What term describes the right side of a ship when facing forward?", options: ["Port", "Starboard", "Bow", "Stern"], correctAnswer: "Starboard"),
//            QuestionItem(questionText: "What is the name of the navigational tool used to plot a ship's course on a chart?", options: ["Sextant", "Compass", "Divider", "Plotter"], correctAnswer: "Plotter"),
//            QuestionItem(questionText: "What does the term 'mooring' refer to in seamanship?", options: ["Repairing the ship", "Loading cargo", "Securing the ship at a dock", "Turning the ship around"], correctAnswer: "Securing the ship at a dock"),
//            QuestionItem(questionText: "What is the main function of a ship's rudder?", options: ["To stop the ship", "To control the ship's direction", "To increase speed", "To balance the ship"], correctAnswer: "To control the ship's direction"),
//            QuestionItem(questionText: "In naval terminology, what is the 'bridge' of a ship?", options: ["The lowest deck", "The area for anchoring", "The command and control center", "The crew's sleeping quarters"], correctAnswer: "The command and control center"),
//            QuestionItem(questionText: "What type of knot is commonly used to join two ropes of different sizes?", options: ["Square knot", "Bowline knot", "Sheet bend", "Reef knot"], correctAnswer: "Sheet bend"),
//            QuestionItem(questionText: "What is the purpose of a ship's bilge pump?", options: ["To remove water from the lowest part of the hull", "To pump fuel to the engines", "To provide drinking water", "To cool the engine"], correctAnswer: "To remove water from the lowest part of the hull"),
//            QuestionItem(questionText: "What is 'draft' in the context of naval seamanship?", options: ["The depth of water needed to float a ship", "A plan for a sea journey", "The height of a ship's mast", "The speed of a ship"], correctAnswer: "The depth of water needed to float a ship"),
//            QuestionItem(questionText: "Which signal flag indicates a ship is reversing engines?", options: ["Bravo", "November", "India", "Foxtrot"], correctAnswer: "India")
//        ],
//        
//        // Add other categories similarly
//    ]
//}
