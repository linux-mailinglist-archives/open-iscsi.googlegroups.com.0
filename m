Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEOCTWIQMGQE42SIMFI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113e.google.com (mail-yw1-x113e.google.com [IPv6:2607:f8b0:4864:20::113e])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C604D19D5
	for <lists+open-iscsi@lfdr.de>; Tue,  8 Mar 2022 14:58:44 +0100 (CET)
Received: by mail-yw1-x113e.google.com with SMTP id 00721157ae682-2dc7bdd666fsf89883147b3.7
        for <lists+open-iscsi@lfdr.de>; Tue, 08 Mar 2022 05:58:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646747923; cv=pass;
        d=google.com; s=arc-20160816;
        b=b6L1dH1MQ6FqvPsIucbUskKKFKEA/ZeQ2ANFYxxujFd/+gjvvhSkej80l5JE7Ucp4l
         pNPmQmE6r+vxVvf9XjSqLLi3LAaBW6Bpr2AHu8oOYU2trJ3W8Yz4azx+zk4Us5GEfCkM
         BexaFvG8aNBqR0C4ja+TVJOGtiOulRObEUs4C+EpvmByJR7DEAhz+AYf7GeWp+m63Z1t
         eLBnOn0z3An03tCmXdrHOLRYIVhvJ+lNY83S0NQgOBOEDuquRZ5+K+sHyR50J10vuMjY
         nOehj+/AH+jyc60qoLc7tBbF2A0fcWKgSbGNba7ZMDKs9orHQif686O2rI/vAfWPACZt
         ItQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=MuPHWoxu7cpdWaF4v1ReotCuIK+3sJZ2bBUyUUvYQsk=;
        b=yOOW/cO9ejvdLBcYKr1cXN1saLNKKCJuG/1GJCt5BNdLGHTefmogyMjjmTi3ACUlp+
         9A3GxSXoNgu8fpPbE60BJbj28VwVdMJ4hhGpw+MUHW8Cw/bJMq63MBR31GUOglGv5vg6
         x47EJ3ht1glJUKzmYeL0MMHhoAN3HmOxeLHxYrVNQDTp14rA0jjc8GSGRQj+pUA1cP/F
         GA5+UqN7ySxlh97KwXfm/o+jKDvwl1S7XQm6U64fLGjq1BZJ3qkRU0q5sTyu3L3HZxV3
         eMJFtohK9Va5H+urpFy0pBE4LA2CfPruhVKGHIST4wkXkHKljFSVYe8B5vd2DD303ANG
         6OQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=MuPHWoxu7cpdWaF4v1ReotCuIK+3sJZ2bBUyUUvYQsk=;
        b=sF9AP9HicjQRJ5m+bndfiYxpXpZ2cvcBR3zJiKjPO8zNKGZoYxofPcDRfARgLhfmPD
         mgfXLdQzHXP0Hhbc9vZF1oaygUCbdeA3ziNmFblvd8S4clU3LSb1IwJIPvR/7Z4kC2oL
         VUsCwzTsJOW0uSpNp2r+CwlvtZov7WZ6VRJm+SLWgZ5jpGTSVwjRz/aSOZPC8RmU0bFb
         1y05MVh2tqob15j7ve6tnEkTyjn3Qki4QB9IoymfVc0pQo5kluq7NenP+ozbDyzRb4GE
         +3US2bwQmCbF6B7StiFFTzGsEUN5Qrww6WzqAWq0WY9O38+QINxP04uIhtLZvPaBXMwo
         oAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MuPHWoxu7cpdWaF4v1ReotCuIK+3sJZ2bBUyUUvYQsk=;
        b=uD2Sa2T1rPZ1k3iqWbOGZLQEN5/KC/tqW9g4WC80r38wg9rMLQvn0cB6f8l3Hg1fkh
         mIffvoqdS6cUCTBUiluNelohaqoD27k5OLwo9bV3Mhnxr4zLSjDZsqPHuZhxgoZe9nBN
         PvF8KpOYQqv8VCwGVbR8zMEfyo8rOLlJ0SwReLLHBfUsw1ZefVgcajZWWSyUfUg7ZwON
         Yiu/1v2waMQ37Ps7JyFZQ5yo38DVPXjNHbeZVqB6irpvosFTs5cnH4ObmmP6tY3bCFUR
         h/Jw/Rs42rv5nVJsACASRTEFjW7gBXTdqFLLw2VGT3K2v+qO+l/M/rHHYvoOEqx+qM/w
         5Uwg==
X-Gm-Message-State: AOAM531GfxmJOYTqqyqzd3PEwDkxA5aJ7mOMdfur+jQeSpjTzpmj4uAQ
	uLTodjdpILPD28IMUF3ooC0=
X-Google-Smtp-Source: ABdhPJwtDSjh1FcYQfRaoOgtYpmkpjTKUfqReLaxlkwgEeSSBuhTPYsH7UOjs8Io7swoEZhtVByIuA==
X-Received: by 2002:a25:7314:0:b0:628:6dba:617d with SMTP id o20-20020a257314000000b006286dba617dmr11997135ybc.276.1646747923063;
        Tue, 08 Mar 2022 05:58:43 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5b:64e:0:b0:628:b4af:6a8b with SMTP id o14-20020a5b064e000000b00628b4af6a8bls9972629ybq.6.gmail;
 Tue, 08 Mar 2022 05:58:41 -0800 (PST)
X-Received: by 2002:a05:6902:56f:b0:628:c2dd:ab75 with SMTP id a15-20020a056902056f00b00628c2ddab75mr12080544ybt.101.1646747921266;
        Tue, 08 Mar 2022 05:58:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646747921; cv=none;
        d=google.com; s=arc-20160816;
        b=j4yGpt3srfGQorA54CXPvKbM+hYWzRdvVNGlrYyBFpI1GleP00DcZ5R1lb9oEy5ODq
         uKlYW4lGxI9tGnNzky6pTudNWU3/ZQqj4fHeNxPCf8WsJsAtCE0unXrP1ZqVKnzL1may
         VGjZvV95fyZbl6c09MVgpf1aWleCttUWuq8CSvs+/0BDk7jJgg7Hc2nhZE9j/6ZZ/wcW
         AtdmppiupcvcPR2xFC+Wln2zD9liBVoS62kUUlA/VmwMLVpzxiwsGA5hVMx/SVVAxXKg
         wF0PRmigfPI+AHdiHwJpEUt2YUVsrW7A3doCNLxuZam+RbZjq2GqMqEBJP0WrH+ce6R2
         gZhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=In84sZKq6SlFIaeX7yHw/zQ+zP0jJayV/nA0T07fFeY=;
        b=nmlZfK4kT0O39rVPjfyUGvFtTdyYe86hsxvrJILwWU2wL7v+HL5bA6eE2W9AaK8zk0
         T3Rqz9KekGsuM0CJqUuf5SvlRehVNS1+aMFtiIvmL+mc0r8rXWB8v/iu9nO9e9Mz6SFN
         v29nL9W6Mgwi/URxJ7D/l/PRtjF/49RRc+fRFhzCkNi6cQqHUCepzem0kEpYOQ9YFV03
         TBqnZcnsfzmMgnFcLt9oqlT/dnOEiZMW82Tea9iOJQkWuPDydbk22BcVozwe7ujR3mUn
         gDu+Rxk3tTpbW3n1TrIbz9T/LyUyAq8I21LYyPaZPWhwOjrsSUTNAb76tRsd4KSjSOly
         SbQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id i7-20020a056902068700b006294894fe01si458644ybt.2.2022.03.08.05.58.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2022 05:58:41 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4KCcHf1mY6zbc1x;
	Tue,  8 Mar 2022 21:53:50 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 21:58:38 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Tue, 8 Mar
 2022 21:58:37 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v2 0/3] scsi:iscsi: handle iscsi_cls_conn device with sysfs
Date: Tue, 8 Mar 2022 22:09:13 -0500
Message-ID: <20220309030916.2932316-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

We found a NULL pointer dereference in iscsi_sw_tcp_conn_get_param(),
the root reason is we did sysfs addition wrong.

iscsi_create_conn() expose iscsi_cls_conn to sysfs while the related
resources are not initialized. So we should delay the calling of
device_add() until these resources has been initialized.

This patchset solve this issue by correct the add and teardown flow
of iscsi_cls_conn.

-----------
V2:
  add two more iscsi_free_conn() and iscsi_remove_conn() than V1
  change the teardown flow of iscsi_cls_conn

Wenchao Hao (3):
  scsi: iscsi: Add helper functions to manage iscsi_cls_conn
  scsi:libiscsi: Add iscsi_cls_conn to sysfs after been initialized
  scsi:libiscsi: teardown iscsi_cls_conn gracefully

 drivers/scsi/libiscsi.c             | 21 ++++++---
 drivers/scsi/scsi_transport_iscsi.c | 72 +++++++++++++++++++++--------
 include/scsi/scsi_transport_iscsi.h |  5 +-
 3 files changed, 71 insertions(+), 27 deletions(-)

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220309030916.2932316-1-haowenchao%40huawei.com.
