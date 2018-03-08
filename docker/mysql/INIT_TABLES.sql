CREATE TABLE GiftBox
(
  id             BIGINT(11) UNSIGNED AUTO_INCREMENT
    PRIMARY KEY,
  senderUserID   VARCHAR(50) DEFAULT ''      NOT NULL,
  receiverUserID VARCHAR(50) DEFAULT ''      NOT NULL,
  giftID         VARCHAR(50) DEFAULT '0'     NOT NULL,
  liveStreamID   INT(50) DEFAULT '0'         NOT NULL,
  point          INT DEFAULT '0'             NOT NULL,
  revenue        FLOAT DEFAULT '0'           NULL,
  timestamp      INT(16) DEFAULT '0'         NOT NULL,
  isRead         INT DEFAULT '0'             NOT NULL,
  message        VARCHAR(50) DEFAULT ''      NULL,
  voice          VARCHAR(50) DEFAULT ''      NULL,
  isCanceled     INT(1) UNSIGNED DEFAULT '0' NULL,
  extID          VARCHAR(50)                 NULL,
  extPoint       INT DEFAULT '0'             NOT NULL,
  srcType        INT DEFAULT '0'             NOT NULL,
  srcID          VARCHAR(50)                 NULL,
  migration      INT DEFAULT '0'             NOT NULL,
  isPublished    INT DEFAULT '0'             NOT NULL
)
  ENGINE = InnoDB
  CHARSET = utf8mb4;

CREATE INDEX senderUserID
  ON GiftBox (senderUserID);

CREATE INDEX receiverUserID
  ON GiftBox (receiverUserID);

CREATE INDEX giftID
  ON GiftBox (giftID);

CREATE INDEX liveStreamID
  ON GiftBox (liveStreamID);

CREATE INDEX timestamp
  ON GiftBox (timestamp);

CREATE INDEX isRead
  ON GiftBox (isRead);

CREATE INDEX isCanceled
  ON GiftBox (isCanceled);

CREATE TABLE MktEventDataAggregation
(
  type          VARCHAR(50)            NOT NULL,
  userID        VARCHAR(50) DEFAULT '' NOT NULL,
  amount        INT(20) DEFAULT '0'    NOT NULL,
  lastTimestamp INT                    NULL,
  PRIMARY KEY (type, userID)
)
  ENGINE = InnoDB
  CHARSET = utf8mb4;

CREATE INDEX type
  ON MktEventDataAggregation (type);

CREATE INDEX userID
  ON MktEventDataAggregation (userID);

CREATE INDEX amount
  ON MktEventDataAggregation (amount);

CREATE INDEX lastTimestamp
  ON MktEventDataAggregation (lastTimestamp);

CREATE TABLE MktEventDataMark
(
  type  VARCHAR(50) NOT NULL,
  rowID INT         NOT NULL,
  PRIMARY KEY (type)
)
  ENGINE = InnoDB
  CHARSET = utf8mb4;

