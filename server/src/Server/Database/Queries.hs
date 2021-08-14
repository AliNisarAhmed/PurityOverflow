{-# LANGUAGE TypeApplications #-}

module Server.Database.Queries where

import Data.Text (Text)
import Data.Time (UTCTime)
import Database.Esqueleto.Experimental
import Database.Persist (Entity (..))
import qualified Database.Persist as P
import Server.Database.Model
import Server.Database.Setup

-- QUETIONS

getAllQuestions :: DbQuery [Entity Question]
getAllQuestions =
  select $ do
    from $ table @Question

createQuestion :: Question -> DbQuery (Entity Question)
createQuestion = insertEntity

getQuestionById :: Key Question -> DbQuery (Maybe Question)
getQuestionById = get

-- ANSWERS

getAnswerById :: Key Answer -> DbQuery (Maybe Answer)
getAnswerById = get

getAnswersByQuestionId :: Key Question -> DbQuery [Entity Answer]
getAnswersByQuestionId questionId =
  select $ do
    answers <- from $ table @Answer
    where_ (answers ^. AnswerQuestionId ==. val questionId)
    pure answers

createAnswer :: Key Question -> Text -> Key User -> UTCTime -> DbQuery (Entity Answer)
createAnswer key articleContent answererId now =
  insertEntity (Answer key articleContent answererId now now)

updateAnswer :: Key Answer -> Text -> UTCTime -> DbQuery (Entity Answer)
updateAnswer answerId updatedContent updatedAt = do
  a <- updateGet answerId [AnswerContent P.=. updatedContent, AnswerUpdatedAt P.=. updatedAt]
  pure $ Entity answerId a
