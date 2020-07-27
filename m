Return-Path: <open-iscsi+bncBCVKFCXPY4LRBLX57D4AKGQENMDA6QI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7ED22E40E
	for <lists+open-iscsi@lfdr.de>; Mon, 27 Jul 2020 04:40:48 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id em19sf10341612qvb.14
        for <lists+open-iscsi@lfdr.de>; Sun, 26 Jul 2020 19:40:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595817646; cv=pass;
        d=google.com; s=arc-20160816;
        b=QqwHVGjxjaVrEkfZRHRhxPpu30rRbu1rUstnh/I37LEvxOtNOTtsl+fmm8j+U0PjUH
         nScS2xPg4L20l7LJDJigvxiLt7gDEEpOlLif4TDyLTd6SkwlVpWsFf2lc6yAb6eR6zF9
         n8dCHyKaU74XAPpzLHabCMe/IOYZmT8ew+9edl5B4vx3qIqFUenMuIODs/A0+7BVT267
         y3Dws6TblklGwHtpCNiTxM4aQPbIXSooQsG9Aurwev0UhmrtDSY3g83pisb4eJXZQOkH
         X+vjLg2Bd32LL4w/GWrL2MGWDBqhoYDEmWf/oZOIkF2TTmA6wEqJ4jxID5qzpY1S7P13
         rzzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=v7UWz0h0DWLrbE6H3rkXAArQVjJQmbFLCBG3Cglcsf8=;
        b=UrQxcJUEuqQxhaIdqfUb3RDnsCeFGFfPsGA1+gqlLVpeuiV/GV1514PKubGjHhLsVJ
         jV6Do469ooQgdjL9djsbBDMEayBhk+Q76igcKRu+dfqmXwq1QKSMbskOHGKnm7moSM4S
         j8gFC9Kz62wpXO5J1X/VeEK86DuLmc1RylPhdb9kZG2E2cpWkMVPNOBL51uJO5LrSWjP
         J0/besQiQIRqW80ZkLubIkN6cas2BmsBDlJj1WWW4/nafO+OQAHo6r6deewcUPd1FNY5
         5KG8QEbukeDxYi0S2trgkPsoZhdoG5suKwk+8khGE7NOouvHJ/svOlsGIRmWqfbbLide
         fyHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jingxiangfeng@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=jingxiangfeng@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v7UWz0h0DWLrbE6H3rkXAArQVjJQmbFLCBG3Cglcsf8=;
        b=bO6MWKiUqHBUjqgPj7gFDjUBy/q/DPBDPpH1X0CAqaNQbmZQYIIZQnksvi2MOdUWwQ
         DvxeJliLuE60rpMbTN9HrkqjGCzqE/qj5gjBWK3iXpeolfesyeUwGygIyPLcIYISDx+O
         3DSVTyOd3VpNGrYcya3r+GceHE40NJTm/BjZeYru1gMtzSoYA2RMqI+Ln+xp0eCiFRjy
         clAmaKPgE48D9pC3lYYsuvrEBS7gKsV5wmXmZT5TV2bu1X3ECfqZ4EzJpbAvldllzbDW
         6oKgMapN3Aay8Df+bj0no0y8RI96vs4VjlevBtYVP1nRrKisRAIRAk+W0yyntS5pehyY
         Ry7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v7UWz0h0DWLrbE6H3rkXAArQVjJQmbFLCBG3Cglcsf8=;
        b=evFrocjU9rF9PX1ogb0NwwaPdLW6WUDBL8eBY3ISopW4GLS12bFRtNJqoIdm/Z+r9E
         plePXSFisJBpjTsbnRasV7LO4huBGoiiQE+hWb6TWiLL4NxAPjvXONYRIxsTv2XwbieF
         WJo0DtEuePssolio9h+d0cDBXCnTnswp8gqd64HsIZuxVAxTYgVOn7LpI/USvnihO4yB
         +JnYQ5kHSgzrQcmUfhabYYIn2mnfOiGIBI/lQ7r/AYQ6MJYo9tzPC16viMvF1bxZ9asD
         +esbVJImv0c9pG56ayHtmN4YpQGO8033rXlANciEQBPs9XaXDFEM8i8JE2rL0IEWInoD
         IERw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532RH3bVU16rGjNJd1PvssZNADiJsSYqRQtXZfz51ABb1ITRt96t
	aVTJr1J/1DtEWZq+IrPdJhs=
X-Google-Smtp-Source: ABdhPJxV2zE5ul4FbDvn6J9NN8MLL0/jaiZQS2LB40A3U12q/b8ku5HIVWSPnVviv55QW5ZvddhHEg==
X-Received: by 2002:ae9:f008:: with SMTP id l8mr20369895qkg.342.1595817646709;
        Sun, 26 Jul 2020 19:40:46 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:678a:: with SMTP id b132ls7392912qkc.5.gmail; Sun, 26
 Jul 2020 19:40:46 -0700 (PDT)
X-Received: by 2002:a37:b384:: with SMTP id c126mr17727027qkf.96.1595817646294;
        Sun, 26 Jul 2020 19:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595817646; cv=none;
        d=google.com; s=arc-20160816;
        b=0KbXB/z1OA0EF5DAE2VNuEGl3YTVq17/eL5XgUrb/QbN+bWZJvubIRh7/p4gzKSn3k
         eguXKv/XnhNqc3K4O0w04CfviXE9sxi3RbjAZl3jWWGFNawCfMSrpRKHSlsLO6KCir86
         nmwpb2ERtlFtXgP2DwhakOt3nGgEUYiqF6zUZp3OxO1luLNScCkE/jA1s6V77ZTGAUxy
         tr6pW3q3Yh3QVI+1CnOs4VVpE/jNN3hwcm4xrifa8L4BA1AUgaj3/DGpgTvpmAranXue
         ds3V1SLgLoQquCz5R1dp5qpAVKbr/i6aEXGbCUuWrw0iQrLrLJFTrpWAZ1i7shstyYqN
         9UXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=4lNLKSQVh+f6yBf03oF7HMU1vYayJ9Rg9IGbcq1TtA4=;
        b=wqGgbpUI3HDujyajaxo0dTGlMdum5/4th+EVGOnHnzZKiVzZZsbsqLpeRH+nI2cJ0G
         /++JfvxS+k1q6FgtZUEzXv4Ivimx7i2sgnNRFtkhSdfCZksgX1TaeDUzWMBIGgj2q+YW
         VzZBX8mmssXZzio94kpTVpVZAk7BcAIahXLm755jYJ5RurpYkJ2zPcvdsMquLRS65vLv
         gVdsR7xBXKGnAikjubD89V5+KcdfZ+wQqyqZ7eCAhVA2gFqztnFFs5KLgV+Y695Ma3ey
         Qm02Si7B7CIKFEp9p3MeZ5A47BDii5UZCrZjcdiSjEYoknaC7/0FLpjKDYDpzT9A0Mxe
         wdlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jingxiangfeng@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=jingxiangfeng@huawei.com
Received: from huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id e16si163439qto.5.2020.07.26.19.40.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Jul 2020 19:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jingxiangfeng@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 13534F58F6CB3CE6DC4E;
	Mon, 27 Jul 2020 10:40:44 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Mon, 27 Jul 2020 10:40:35 +0800
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
To: <lduncan@suse.com>, <cleech@redhat.com>, <jejb@linux.ibm.com>,
	<martin.petersen@oracle.com>, <michael.christie@oracle.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <jingxiangfeng@huawei.com>
Subject: [PATCH] scsi: iscsi: jump to correct label in an error path
Date: Mon, 27 Jul 2020 10:43:40 +0800
Message-ID: <20200727024340.163937-1-jingxiangfeng@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Original-Sender: jingxiangfeng@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jingxiangfeng@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=jingxiangfeng@huawei.com
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

In current code, it jumps to put_host() when scsi_host_lookup()
failes to get host. Jump to correct label to fix it.

Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 7ae5024..5984596 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3341,7 +3341,7 @@ static int iscsi_new_flashnode(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.new_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_new_fnode;
 	}
 
 	index = transport->new_flashnode(shost, data, len);
@@ -3351,7 +3351,6 @@ static int iscsi_new_flashnode(struct iscsi_transport *transport,
 	else
 		err = -EIO;
 
-put_host:
 	scsi_host_put(shost);
 
 exit_new_fnode:
@@ -3376,7 +3375,7 @@ static int iscsi_del_flashnode(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.del_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_del_fnode;
 	}
 
 	idx = ev->u.del_flashnode.flashnode_idx;
@@ -3418,7 +3417,7 @@ static int iscsi_login_flashnode(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.login_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_login_fnode;
 	}
 
 	idx = ev->u.login_flashnode.flashnode_idx;
@@ -3470,7 +3469,7 @@ static int iscsi_logout_flashnode(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.logout_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_logout_fnode;
 	}
 
 	idx = ev->u.logout_flashnode.flashnode_idx;
@@ -3520,7 +3519,7 @@ static int iscsi_logout_flashnode_sid(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.logout_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_logout_sid;
 	}
 
 	session = iscsi_session_lookup(ev->u.logout_flashnode_sid.sid);
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200727024340.163937-1-jingxiangfeng%40huawei.com.
