Return-Path: <open-iscsi+bncBCVPTQVVPQIMDAGD6UCRUBDI7KI44@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7B81C4B7E
	for <lists+open-iscsi@lfdr.de>; Tue,  5 May 2020 03:24:18 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id l9sf1017993ili.19
        for <lists+open-iscsi@lfdr.de>; Mon, 04 May 2020 18:24:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588641858; cv=pass;
        d=google.com; s=arc-20160816;
        b=hgA8r1iNOsVZlivvcdOVb1DWXgY35yPPis125Lej0KL88DXBgXBnHJdVAiDGzy5bUt
         c6ZpEkcV9DTb1QV90nQEqwvthjBjJ3NUyyYcivxtZuDOA2yPwzBbqPWz4LaMRPbesF5p
         /byez1ySH09CIvnpXfuEVsQ6T0EeoiHkADJEd2KpFwEmLUONjpnnPKU9BCpiO8y/T0vK
         1sKx/X2Bfo/kYH/5Lj25A66pir152DaFrVhgnLnaaUdaEQZZmoPMtBKrwAQNMJE/41Ma
         JlA7r+itesoEgkI9hytNYRP+eSE/Y9haZEM34JDb2/wIB7zBv4d1QUKYcW89k5+L2+Sl
         0QXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=rpip3QYMJRoLZHMLKXW14ROoCkv6zlCh1C5nTouB+kY=;
        b=UF14MfVEKmozhOeGnDCGA2JWYFQ8p5HnNrgF9/xCozirGnmY/ggoEZlJtS5oJR4daw
         473byJoNtQ2j+B3XeUWspAbRuD3Z7MNDgtcZEhMQvcI6d8IyfdiSUm1daETQACEWouZ2
         jylXsU7rq2+QW1tORNdbADwyoes1wJ95MGfpiN/KEvLEXyi/kQ+0OzEmUQkGt1RrKZtO
         FB7WOv3LPBPOZRiFPB1ykx27zyhrBuAmItWVqDUfAyzTVv1pauwg8Kj1FLT2vvkW7kXd
         YSWMUQTbfOIfY4ehEvWVwWud1DJsj+M2lDJPWM16xLJxrUuQY0B4njIhfVPq5pZUSsBt
         SvHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=0DENoFWF;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rpip3QYMJRoLZHMLKXW14ROoCkv6zlCh1C5nTouB+kY=;
        b=b8VztO2rCQ669jyaSyc6uVSEtKdcF6JvUhR989VMrvE0AEnHg0Hgr7MrRJd8hbwBHp
         ErvCobKGa1xyV4bcDQGqX/wL+WzX6s6VmwxeBL6N+Xlu2gPOIsTqHxbHXdMi937qtYKZ
         nPByKA4OK4ELwn856QmQMm/mdOAPTJ0o2DYe4rvh8KfFseXijAs2J2Agr0xehC1xYoLg
         xrR5cTAAfntdV4lAYhUzuEche7GKdb8RvzaRWta8lTxU73IQncBqymWFpDIK1Anzde7m
         oHZNLiBNQFD34sVi/aXmyU4AvUhAhhfydL8XKHTkP7iE+olyJ7XOAj0fsscmo1aMV7lA
         fZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rpip3QYMJRoLZHMLKXW14ROoCkv6zlCh1C5nTouB+kY=;
        b=P6dwCycd0Lp7J5w+VhAplGtXjkRpRzuZPS/AT55ZjEpRvxLAouFbbU9nBP7v4sSXwt
         FzDN2HiiNdoUHWqGJ05AX/82bvG//DtnLDPmlDq1DbJU96yGUBaEzQad/FHRZi8araAZ
         7FxG5fuo0avEHL7WcDxHEW4QRRqmgwivIV65NNxPmnrTDuDRg/uWydZjnHc2rafa8r1W
         0uSLGq0mrj3oajJ9NLIXZo9PsZAj7SqtV25ANkWHooAzOhpvim7mFMIR6fCCb9dMVmfH
         epr5HTYixpGGzpJN0eDO1qREstzyMNqlc+6g/sVnzLznVx307zIlpG5GTZKcCcCgheDb
         H2ag==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PubP2Rtar6nSKQVAOlt+SoEFxIxeeIWbIPQ940btTstgyZJztqC9
	BF8EOxm0pGSsOyHIQWtSG2I=
X-Google-Smtp-Source: APiQypJ1U/Q7R4aPQgCB5s0RjKaGEk/V39B1kkXeTu6jwviYr+A9LVq3UUN/GA0YI8dsF6SIM5SSLw==
X-Received: by 2002:a92:d8ca:: with SMTP id l10mr1305045ilo.118.1588641857941;
        Mon, 04 May 2020 18:24:17 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6602:1494:: with SMTP id a20ls201057iow.5.gmail; Mon, 04
 May 2020 18:24:17 -0700 (PDT)
X-Received: by 2002:a5d:8986:: with SMTP id m6mr1164851iol.174.1588641857551;
        Mon, 04 May 2020 18:24:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588641857; cv=none;
        d=google.com; s=arc-20160816;
        b=ykjBGzYNHgzRg9t6TZCTdMLQro8Ig7ZRNYJOfPfkoIHqGsDlXF7cjpqilB0OfvedXJ
         xv6upAoklgvS2zSEFjEARtGn8Sa8RUcTBCYIEBJbxSpHzgKRV7VE2GxlzIzrmfX9GQGC
         IfmW9VKwQgcESO3vXhdrrzBfn1yM3MbRIb1mB44JNBR3e6njWCp0U/rI8GnBXjpWmwaB
         7Y+Ac8s1SpvtRa9qSxD80RN+Ospal0NuzmHxOHqQSMYh2645VQgSY2Q/R1wLAPSO5ux5
         GFgeEjWQyhVBq/dqekFiS8lPlFSrHfy+EVOUKr+unMwZC3vVRx5tB2tMjVK7ezn99e3h
         s7uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZiIYsyhEzwJOLD8G4ZKOfoLZdUdKVaV6MJOiv2XzEes=;
        b=Hjsv/lEcrt0jq3pk8oVu/sBkNKiGYuUK5FCftpjrXbUTjgytCkmegW3coTWjFxPNmO
         6ivOso9RdEzjFh/9Z19zLU04OB8NLiCGPNLhrrM8DkAd7RAgerSBXtObce1Yd/axCm8e
         pWKpe71WmAc0J8Bndmgm1uPnbo24b9rGsq73fUjxBv4UY/vwdZ7lbg1g+BE8nfoNgVz6
         /ad8QOgdBbYmFMiSAKud7wCKz5/MttF0h8m0xv2Bn4Kjvb6pBCQ3F4CIock34oy0wQBR
         FZrSEBx69zHP0XBlo5nCjq1siXz2KJ4phrecW9B5xiXTdkunILc+r5wVj8QpMKhXciER
         u99A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=0DENoFWF;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id v22si65914ioj.2.2020.05.04.18.24.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 May 2020 18:24:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0451NUfZ080070;
	Tue, 5 May 2020 01:24:16 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 30s0tma1x4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 05 May 2020 01:24:16 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04515SvJ145294;
	Tue, 5 May 2020 01:22:16 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 30sjncmqpv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 05 May 2020 01:22:16 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0451MDbm019379;
	Tue, 5 May 2020 01:22:14 GMT
Received: from localhost.localdomain (/10.191.26.117)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 04 May 2020 18:22:12 -0700
From: Bob Liu <bob.liu@oracle.com>
To: open-iscsi@googlegroups.com
Cc: lduncan@suse.com, cleech@redhat.com, jejb@linux.ibm.com,
        martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
        Bob Liu <bob.liu@oracle.com>
Subject: [RFC RESEND PATCH v2] scsi: iscsi: register sysfs for iscsi workqueue
Date: Tue,  5 May 2020 09:19:08 +0800
Message-Id: <20200505011908.15538-1-bob.liu@oracle.com>
X-Mailer: git-send-email 2.9.5
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9611 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=3
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005050005
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9611 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 suspectscore=3
 phishscore=0 clxscore=1011 bulkscore=0 mlxlogscore=999 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005050006
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=0DENoFWF;
       spf=pass (google.com: domain of bob.liu@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

Motivation:
This patch enable setting cpu affinity through "cpumask" for iscsi workqueues
(iscsi_q_xx and iscsi_eh), so as to get performance isolation.

The max number of active worker was changed form 1 to 2, because "cpumask" of
ordered workqueue isn't allowed to change.

Notes:
- Having 2 workers break the current ordering guarantees, please let me know
  if anyone depends on this.

- __WQ_LEGACY have to be left because of
23d11a5(workqueue: skip flush dependency checks for legacy workqueues)

Signed-off-by: Bob Liu <bob.liu@oracle.com>
---
 drivers/scsi/libiscsi.c             | 4 +++-
 drivers/scsi/scsi_transport_iscsi.c | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 70b99c0..adf9bb4 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2627,7 +2627,9 @@ struct Scsi_Host *iscsi_host_alloc(struct scsi_host_template *sht,
 	if (xmit_can_sleep) {
 		snprintf(ihost->workq_name, sizeof(ihost->workq_name),
 			"iscsi_q_%d", shost->host_no);
-		ihost->workq = create_singlethread_workqueue(ihost->workq_name);
+		ihost->workq = alloc_workqueue("%s",
+			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
+			2, ihost->workq_name);
 		if (!ihost->workq)
 			goto free_host;
 	}
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index dfc726f..bdbc4a2 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -4602,7 +4602,9 @@ static __init int iscsi_transport_init(void)
 		goto unregister_flashnode_bus;
 	}
 
-	iscsi_eh_timer_workq = create_singlethread_workqueue("iscsi_eh");
+	iscsi_eh_timer_workq = alloc_workqueue("%s",
+			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
+			2, "iscsi_eh");
 	if (!iscsi_eh_timer_workq) {
 		err = -ENOMEM;
 		goto release_nls;
-- 
2.9.5

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200505011908.15538-1-bob.liu%40oracle.com.
