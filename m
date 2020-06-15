Return-Path: <open-iscsi+bncBAABBDUGXH3QKGQECDVDHZA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 65260202588
	for <lists+open-iscsi@lfdr.de>; Sat, 20 Jun 2020 19:10:39 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id s30sf6644712qts.18
        for <lists+open-iscsi@lfdr.de>; Sat, 20 Jun 2020 10:10:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592673038; cv=pass;
        d=google.com; s=arc-20160816;
        b=Utmi+gLfuVabMw6SlqrbaJaJckJ2H/c28TUEKngVt2BIRqUls2z2DiZ3OMCmpPfzs0
         zuUZZnagdeTOHoi5rvniSq3xKHgVee3pBFaExYp8TJyzr5f4YlHjrognUhlJa03Y+FX7
         DMvQIMlN8p0HoZ/ER4qiXHzJfR8IE+kgYy2/xL0hRn+LoxfnRRal7uFL1Q0EWQnGDIrQ
         AoRLaSXHMAeHfl0ChqZ/PVHn4Nbv84YWs9k2jTGpuyg0DkXpMGn1orUTfbMxNQFIdje4
         wu1WjC9LeishtL7oHf7P2pAqMHckmtJJFoEwKuel3mfpY0qmpTa3Vru1twjM81OrKneL
         hx7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=lHvrxxl0rtA9jMjJDyaTG8GepyJCHYqnLfQLpYOwrsQ=;
        b=gBr9iTg1/itOBT1MRqRiOfj+3a1zCf6OwcA9GmjDUoTR3Z2G1uPIbrslhz36bgGHw5
         Nw7ibbZlOTUVv10L8agiwgo84nnhV0kCsuaJke1kAAlJmhXBQFLgcYwXZTSTRqM8By7k
         l/o+1GbiR1jR4JpLp6VUQzJAA4Z28+Yriq3RzzlJlUVHswQ52xCeeyvw/0W9TlPRTkMr
         C08L7e6ABSx/IkyswUVxIQB9cE8aCOaWQKrZ3QjZKefcAmrewTr3mdtcPPhRS1jSrvW/
         s0WWS4BVXuCIpFjPEzy8xWLWUrRgjTk/Pg2cA86S7Bm0KYzvR6mmZhKOPNJtgfOKBCfu
         jLPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jingxiangfeng@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=jingxiangfeng@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lHvrxxl0rtA9jMjJDyaTG8GepyJCHYqnLfQLpYOwrsQ=;
        b=TLx09rMbbrKxfuWhHTgoKhrIVSS6STNwa4p9zmrlslUgrp8Ft5dRvEhYeupg/FnASK
         47A2wi8otYL9urrJietl9JAVYhE+QMeIPsg8hDgDUGTY0cltMGVKhNMC4ff4HfK8zscw
         gZDhsSLGJqW97w92Tql/1WnCxokPRLlfAdLp6YnEFv8NJRB1FkXupsVvEhaS0F6Mfjvb
         CfDJyTgFfrV4LSKR1VIftfpeB5iVcIngd7lNGoKf3L3rM/WIXwovX7z6hqjevkii0wUu
         hcRXfKL9KrmVncInd24FaT76ptWSvJRJ7N11Fu/aPBWsSl1aykpL1wFmA5VA9DluVJuT
         NHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lHvrxxl0rtA9jMjJDyaTG8GepyJCHYqnLfQLpYOwrsQ=;
        b=r6sMEMJmgQP0bytSUAPijWO/YoYG91ZeYOUM9m+T9TuNO9R6lgEQoocEVVxsSFEv5d
         c1xBQmtFsw0140Hed2u5HN5FLlorbaeRUbnQ+2kKu6tuVNSK7XSHsix+dzl/zga3xL+l
         Q99ojuWqI1iElhOW2lpkLgcqRUZoXdfoYuG1IO6HPdG7sdGCryDHscRT5vNBbzk1Opv0
         M/4keKKx8/FhZGpDnsfqqxLvhggVhWNpfFUI6J9SoxOeWNqjwlqgf3gj+WBcJnX/7p2G
         aYsxhRbcIFZozAmBwFWwePQZuyqsnDwvh6/VH+1dCNSfIjetcqqcHH0S1Fff2Pqq6+i0
         dtAg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531n0FZ92E1UWNp01zRl1lxBjCC2NXssMoU19/GlLu2OeLmQpszC
	KtbwhZpt+W/z9VL0SNHCfuo=
X-Google-Smtp-Source: ABdhPJzrITwFa7j01FwKRVP3gqJGuN5EMOrBulJ/x4+t9I8UZbDjwAdF4yuxU0BJojK7IojLtm5Lkg==
X-Received: by 2002:a37:b485:: with SMTP id d127mr2075958qkf.316.1592673038165;
        Sat, 20 Jun 2020 10:10:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:21d0:: with SMTP id m16ls4825776qtc.11.gmail; Sat, 20
 Jun 2020 10:10:37 -0700 (PDT)
X-Received: by 2002:aed:3fa5:: with SMTP id s34mr9052232qth.343.1592673037898;
        Sat, 20 Jun 2020 10:10:37 -0700 (PDT)
Received: by 2002:a05:620a:cd3:b029:f5:d6af:a2a6 with SMTP id b19-20020a05620a0cd3b02900f5d6afa2a6msqkj;
        Mon, 15 Jun 2020 01:09:06 -0700 (PDT)
X-Received: by 2002:aed:2d44:: with SMTP id h62mr15098129qtd.167.1592208546348;
        Mon, 15 Jun 2020 01:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592208546; cv=none;
        d=google.com; s=arc-20160816;
        b=lPj4MHnc/ogjuJhUfmRMEcNzslpoNa0Tf+95snVHnk4dqMapMpserPksyEKB82/0u/
         j5x9E56N/XabZNIp1Tm3FvNaBHQWGKR+i+BYjayF++WfYdXvFguIYE/hJqOeE1BwkB/n
         RZqnXney1gu/IYbgSXIy0qa4TVadt4yZqFXXkbKyao7/nZODZb6E1dDKvzVWohrcRtLL
         kvFDGD/rd4RqXr7JhypHClYlaQJhKiGxYnwkU0YrgTjmoxS2yPBGkdIrHVwAE1yo0Tef
         Y/ZPEfcwyFBZjdzADRC0LV7w4FreWw8/PVfO9IgEZkUGvV6RmuLcCLYImRRCONCkiHtq
         u+XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ELKPhSxacmtWooUHRjTQCUPfY85bfbS647WpCbFJgWQ=;
        b=r38msOYrF4Q148H2xEK+pNzRB1WRdGjylrMdYec7cZD2ZK0DE7ocPJr5xLAJ4vdg3W
         MOrnHHFNfrt/53Ra4wLwc3YB9r8DM8HLVcrloPqnrt4cb6F7dipP7N/SijrohOnb3Ye1
         0PiE9kFcaFmPSSI98YVD/wHjZkOT1Gz0QIcjcy6Qa17j0xoKlaFAuaVTsIIidPkNyN9U
         u7nzUKYG7yVMHk9clLaYq7I649sCcGttVPmd0Q5MqgI15G8qShBjwOMeE6ypq0fn7YK2
         ulJ1a4Tupu+I81quH8RE1vndjq4i3r87/nwW7UXqZ+shnpZLBoSS228Lkh7Oq4k8KwIG
         mFQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jingxiangfeng@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=jingxiangfeng@huawei.com
Received: from huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id v16si733595qtb.3.2020.06.15.01.09.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 01:09:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jingxiangfeng@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id 7E5ED7E1BDB3F9E58F43;
	Mon, 15 Jun 2020 16:09:03 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.487.0; Mon, 15 Jun 2020 16:08:56 +0800
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
To: <lduncan@suse.com>, <cleech@redhat.com>, <jejb@linux.ibm.com>,
	<martin.petersen@oracle.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-mm@kvack.org>,
	<jingxiangfeng@huawei.com>
Subject: [PATCH] scsi: iscsi: Do not put host in iscsi_set_flashnode_param()
Date: Mon, 15 Jun 2020 16:12:26 +0800
Message-ID: <20200615081226.183068-1-jingxiangfeng@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Original-Sender: jingxiangfeng@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jingxiangfeng@huawei.com designates 45.249.212.32 as
 permitted sender) smtp.mailfrom=jingxiangfeng@huawei.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

If scsi_host_lookup() failes we will jump to put_host, which may
cause panic. Jump to exit_set_fnode to fix it.

Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index f4cc08e..c5e99f9 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3291,7 +3291,7 @@ static int iscsi_set_flashnode_param(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.set_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_set_fnode;
 	}
 
 	idx = ev->u.set_flashnode.flashnode_idx;
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200615081226.183068-1-jingxiangfeng%40huawei.com.
