{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

module Server.API.Requests where

import Control.Monad.Except (MonadError)
import Data.Aeson
import Data.Text (Text)
import GHC.Generics
import Servant (throwError)
import Server.Database.Model

(!??) :: MonadError e m => m (Maybe a) -> e -> m a
act !?? err = act >>= maybe (throwError err) return

data CreateQuestionRequest = CreateQuestionRequest
  { title :: Text,
    content :: Text,
    userId :: Key User
  }
  deriving (Eq, Show, ToJSON, FromJSON, Generic)

data CreateAnswerRequest = CreateAnswerRequest
  { answerContent :: Text,
    authorId :: Key User
  }
  deriving (Eq, Show, ToJSON, FromJSON, Generic)

newtype UpdateAnswerRequest = UpdateAnswerRequest
  {updatedContent :: Text}
  deriving (Eq, Show, ToJSON, FromJSON, Generic)

data SignupForm = SignupForm
  { username :: Text,
    firstname :: Text,
    surname :: Text,
    email :: Text,
    password :: Text,
    repeatPassword :: Text
  }
  deriving (Eq, Show, ToJSON, FromJSON, Generic)
