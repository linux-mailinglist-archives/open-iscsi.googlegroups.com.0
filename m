Return-Path: <open-iscsi+bncBDO7B5X3UIBBBJXE4X2AKGQEXWLMPUA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BC21AD978
	for <lists+open-iscsi@lfdr.de>; Fri, 17 Apr 2020 11:08:56 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id v71sf1605294pjb.6
        for <lists+open-iscsi@lfdr.de>; Fri, 17 Apr 2020 02:08:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587114534; cv=pass;
        d=google.com; s=arc-20160816;
        b=sjHEozArO7nwMBSMSuIKyQxR3jF32qoWGttqCmlYYOQK84Y0gq8+2Eaa/EehsKmw8e
         6O91FOa/fjVgusz/02fEMSag4fDSjxQlrS3L6G21NekfI1DYpxslz7uOR3fj2bAsCwNC
         xuCpfkDLI8aZaIWvi1KPKnxfjek6szV8/Bg2tXbQnf2EUZcruqoG9vto0cmXjk1FyNda
         ouFb4pbj95jIM/Tk5c2Cu4ZohTJIwppjh2pot/xSpBJe5kwTmxthIZ0sxuazVddt4hoz
         2Ah7e6+KFWmcRUMJnVMUcCw58DLHrmyieKzFLxNu9v/sc/LOSMGG/JmR6lCxDC+uELod
         1e+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :mime-version:user-agent:date:message-id:cc:to:subject:from:sender
         :dkim-signature;
        bh=fPeNw6xqW8PBqaIP6o6al6DZBOBoBC2LPgPVGD+FWAA=;
        b=c9h/ZZMCcyRrRM8+XUXAziWGL0hSjZl/lkOpaL4Y3uDU79M24B3Gvv5L6AVwtrT/Gu
         YmiSBf+qcWrJa8fvNIgIluppYeJ0gWRmxyZROdaHKQA3EZgksByKOkyMg6lrEzjSVHqM
         d7xtozkNk6aii3Vul2Iq4D7ZmASEUiLuWL9Qo6iV0YXpLYmmqWE+r6OvETooq1qcE8RH
         66Hj0rubaeJDCQVjxrYcEsbBbVz77cHPuvWz+4A0Ho+P7Wkia2oC4dwdHFQDVdyCjHjz
         uDj/7IeJBPVG37sxVEobUkBaRdYRJMi/hbbOv10ObcvsPsEQpY91BLqehmUlkfx56vG7
         pUNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fPeNw6xqW8PBqaIP6o6al6DZBOBoBC2LPgPVGD+FWAA=;
        b=mp0v1jlxH1IX15Z8l0kX4ZYH+N+IYtUvfffFgyEyArNoni7ZuWSMFWV5JOSIcPyeN9
         bJdkJnc/jME/7DuNVHhpbd6nA+VKkKUv3fQyu5tyh68QSUjIdBHsUZIW950cwCtD/ZDp
         r/Co7zPpdQS617TdWqZpPLuuH1HeSRBllycYPt2dy/R5z/DbpG01sQoPYXMvqVY9HZaj
         fSg7pmmuGLGNcQN5ksSYYDpcNYomvYGBm4GZO+tU+qKTTbDcmdT1uaKjjD+M/11uYQ7r
         gIrMoj9AcMgmDAqUiZvh92tqz2JffgX9gO87OXYWrc+9/0N3fuCz+e7b0/h6efcMvOiB
         rkbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fPeNw6xqW8PBqaIP6o6al6DZBOBoBC2LPgPVGD+FWAA=;
        b=W1jN2kPa237vugOUGFdKtMI7PDcA+ZWZGR5Sq6bj/V81J68QtER69o3UxZdnVkI4W/
         lxSdDKXwgNXxDsnahpvp5hN1OE2YJPf1Guxhh1PkuaUh6J336YKEa6Hi847SNqwv0xN1
         KEFskrGJbMphXSe9uOCLZlnOHFdr27hDeaQpzCoSyY6U9P77sKfSjrtVbjDyn2y1zf+I
         ZhXeYkXzY+/eBko7lScggY728nREMhEA/MFGc2mSQ1U2hk2kO65Q4VCWWNcZk5PCcB5s
         6bTPpXj6piy5wmzLFIiHNTio4wAWGHbR9xLtQGxrByW4IrGVHNemtBZz+BjwFBYKNLka
         Ci4A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuYNLsFyTjleRYJ1XBXXMxrGJpadZ5FVcdazA5WPJltvcJhHn2MA
	AF0pmNyoMKeUim7sa1rZYdU=
X-Google-Smtp-Source: APiQypKPGnNWadBisfMveqcbe7OCe7aXL0BSvNyi1DDfE9vmdIAM22ByPC5Ff3WVO/GjGrwOlWgycQ==
X-Received: by 2002:a63:1566:: with SMTP id 38mr2123423pgv.355.1587114534363;
        Fri, 17 Apr 2020 02:08:54 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:ca12:: with SMTP id x18ls550510pjt.2.canary-gmail;
 Fri, 17 Apr 2020 02:08:54 -0700 (PDT)
X-Received: by 2002:a17:902:b909:: with SMTP id bf9mr2610652plb.322.1587114533962;
        Fri, 17 Apr 2020 02:08:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587114533; cv=none;
        d=google.com; s=arc-20160816;
        b=W48JFAAlWPSFqr6BxRzHI4+6CkyryMNUywwsCgREgY7tBxxzhq60IfIBpIZCHHORSJ
         nGFePKnDyiTFJIkx6+H+1tHWVxdzDsL6tEhGcqQ4Onke8Fsabp2v466XlB3/hiFTO/e0
         dT8evdeptHnSMalIatV8rf5ZibQr9yajbQnCNz6amfv3UOS3KtiuaTCKtNkmtZzzw6ux
         i7PyMYECQpTI5EvCVrU/EvjWhi89Lz6MS5XLWZd4Yg/Pj47irE3wr2Hi7A6XF67QyEvk
         NnQnYIwubHIEw2pTrirc5Xkn8nYrPwKx9thhkoGeSJrXvgV7t9rUtyREHFBz/2DaOMOZ
         IIrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:cc:to:subject:from;
        bh=GenDPLRDbww8WPDV8mwodbCBkJv6zR1rDhraonyuPtI=;
        b=kMeWQLFgF13rk8qO6v+gN4e8qpjOwqFj7rC2rpiVBV/KamGpSsXfq+pOdWSp2XluYh
         gvuvG1oQO3Sv1OcMCc5lLtFYg9dXQOGnQ/D8kV3MMQdajS3trVuqhhdJigs6os3yEJ/K
         /ftm3ZGOSzTYKh7pP+ZZ5sUr9aPTe/CIOLXvPaxtrf1wdT09VDht9IDh6/VgeY4JEfaC
         wtd1khK9IXT7fJL+6K+jqDn3conGSVLfiKLCvkAwRxzc1vYjFoNWNkqASRo9FyDv5Y2Z
         iEyCvrk2VAvTr1j+/IAr/SFgu0kfJNtg/FQzCLWCBgfmTTISSjVVUb3SSutTiSlvMDAT
         W/Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id j132si894847pgc.2.2020.04.17.02.08.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Apr 2020 02:08:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id 50B31DBD2D6E147FEFCE;
	Fri, 17 Apr 2020 17:08:51 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.100) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Fri, 17 Apr 2020
 17:08:42 +0800
From: Wu Bo <wubo40@huawei.com>
Subject: [PATCH] open-iscsi:Modify iSCSI shared memory permissions for logs
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Mike
 Christie" <michaelc@cs.wisc.edu>
CC: <open-iscsi@googlegroups.com>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
Message-ID: <d6a22a2f-3730-45ee-5256-8a8fe4b017bf@huawei.com>
Date: Fri, 17 Apr 2020 17:08:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.166.215.100]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

Hi,

Iscsid log damon is responsible for reading data from shared memory
and writing syslog. Iscsid is the root user group.
Currently, it is not seen that non-root users need to read logs.
The principle of minimizing the use of permissions, all the permissions 
are changed from 644 to 600.

Signed-off-by: Wu Bo <wubo40@huawei.com>
---
  usr/log.c | 6 +++---
  1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/usr/log.c b/usr/log.c
index 6e16e7c..2fc1850 100644
--- a/usr/log.c
+++ b/usr/log.c
@@ -73,7 +73,7 @@ static int logarea_init (int size)
         logdbg(stderr,"enter logarea_init\n");

         if ((shmid = shmget(IPC_PRIVATE, sizeof(struct logarea),
-                           0644 | IPC_CREAT | IPC_EXCL)) == -1) {
+                           0600 | IPC_CREAT | IPC_EXCL)) == -1) {
                 syslog(LOG_ERR, "shmget logarea failed %d", errno);
                 return 1;
         }
@@ -93,7 +93,7 @@ static int logarea_init (int size)
                 size = DEFAULT_AREA_SIZE;

         if ((shmid = shmget(IPC_PRIVATE, size,
-                           0644 | IPC_CREAT | IPC_EXCL)) == -1) {
+                           0600 | IPC_CREAT | IPC_EXCL)) == -1) {
                 syslog(LOG_ERR, "shmget msg failed %d", errno);
                 free_logarea();
                 return 1;
@@ -114,7 +114,7 @@ static int logarea_init (int size)
         la->tail = la->start;

         if ((shmid = shmget(IPC_PRIVATE, MAX_MSG_SIZE + sizeof(struct 
logmsg),
-                           0644 | IPC_CREAT | IPC_EXCL)) == -1) {
+                           0600 | IPC_CREAT | IPC_EXCL)) == -1) {
                 syslog(LOG_ERR, "shmget logmsg failed %d", errno);
                 free_logarea();
                 return 1;
--
1.8.3.1


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d6a22a2f-3730-45ee-5256-8a8fe4b017bf%40huawei.com.
