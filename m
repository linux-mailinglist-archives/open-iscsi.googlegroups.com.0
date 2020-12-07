Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBDEXW37AKGQEQ7ATPMQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D696A2D08F7
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:25 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id e142sf16215429ybf.16
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306124; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bigf6glrifOm1hQE2Kk88ekE4d0N0P5lrzpkms5Dhd2ozadm8owUXKgOF8UCPruJkc
         DMXOBimBc+bpKXB5ueWgqKuAEaXZPn9VuCoprJb8SVUkQjndtcko57DEHnMzKxr9z6WA
         nGAAqCXv8ljg/RJymjngudpt9SZNfLUkevhTogXuWeuR1NHYIZcH9fyhlkz77CcmHoRY
         21G2m1WWRtgdCwzuGmVaYJsHmEH2dDLsLby38PjyejNQ5PQPzit7D0nZCkHgfyKJA149
         XOyZQYahuVXn4gJkX/9a8ha/vUNZiYNEpFselc0msRohVJESksXXLr9MRLFnXHrGDG6v
         juqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=QSgUtreOQGEJIWg5Y90E8yLRKpRm9VRf3gf7sewoheM=;
        b=Lnf09vZbhA87Fgz9+yAsEMMZRR7aFM5njpx6Uwibxu2EvBZ/7aMsREHgjDLTfHSa3E
         YS5XNvPx125/qKnOUM48cv9umHW/MGBPpqCPGv0dzYwSpKIULaGvPWKaaDCBYSr+gR6U
         FS/UOCqGEHnlRH7M9E6lI6gohnguduKBdUMmx1THwgnFaMaPnk+lQd8Jn2XUrfNHunBu
         2a2rISLvoMewQCNNoBMtRn6bKDn75m0V+HM6drO1whIyNjYygzqmffCjuhJgF4wQ64lN
         012UAI+W6Lz59s6FsmgZWTxzQM76W6ll/2e2d5Z6rJHJgcWJTAfEYz+RfKomuVCOeXBI
         oqrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QSgUtreOQGEJIWg5Y90E8yLRKpRm9VRf3gf7sewoheM=;
        b=YL8mA0calHKw8ughprX7JVGdxvP83/m8ceEsOLM7oJ6Mk+QZMJIrsBln3csExWbk38
         BPQHTEmpg4d/ce/+KG5WzUNBftubWK+AtMnmSyP0dgpqfue9KeqIEN9/8Xyi0med/CnS
         aIcIjtGJxUiZYgPA4GMwiQhY9SZWyI8ZwpB2vaZNaXcSEkhsHkRZazxqme4zLng69lTl
         X7/Heqm3XtGn3bhOoLQlMonr82xK/krET6L22vo9Y9B/wkkHgGXWVp/oQxqhQ3aAM3Il
         m07/uj6QrgBmTZxnFIbxyiPebA1PyULvS8/GiXIV/xDMVYlh7f25QBZi7cDY7zS/2ioR
         f4ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSgUtreOQGEJIWg5Y90E8yLRKpRm9VRf3gf7sewoheM=;
        b=JzacT7ZSp8tzSOLBs3iHZH4Yx8EhCDWbmbzFqVURETKutlCfte2flx5TS+SlmiLKoO
         5i7GomQEOM9P0/C5NfVx1aAFCAOpqCBHnTS+ZvnCZ8Hd950nJyUWSVEGH2jhUXW62KzJ
         n3aiepE/HNFqXODvj4quTZD/ot28EW6PBS5bu5RrSydfnbPJTqbUm378yZ/ERpif90C1
         u5BYxYGuVlWbod+pIJ2aq5ITUGKUW3vt09fl6PqFY5wh3Gww1qmrxSvoBTnLc2HpAyCk
         pUNZRZgdXWDqrVToWO54JNe2Zi3QI2F0VHgZWOg6OlpwZQCErakS3K5KuuMNId4BEyh9
         /skA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533XoX+FUo7/GwL2N8Mc2EyEZWdL1RK0rLmYmlC6G/80okyD/KkL
	/+TllRPV4DdFflInBFFHoEs=
X-Google-Smtp-Source: ABdhPJxpM9vSg3PJsA5AuSsUKEdvtgWcRrPR9xur3rEFhcjM5Wfp/KS3kRlQlvttM/XJBi/priCEjw==
X-Received: by 2002:a25:bfcb:: with SMTP id q11mr9599332ybm.233.1607306124774;
        Sun, 06 Dec 2020 17:55:24 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:5f42:: with SMTP id h2ls7254496ybm.11.gmail; Sun, 06 Dec
 2020 17:55:24 -0800 (PST)
X-Received: by 2002:a25:468a:: with SMTP id t132mr19015934yba.312.1607306124256;
        Sun, 06 Dec 2020 17:55:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306124; cv=none;
        d=google.com; s=arc-20160816;
        b=vFBItc2qMQ6sn7HFys6jXihKOnbkij0/a09F5OqZd6LaEZEIx+RhFAz6smH09QAK7u
         V3/R0KDjeUHuTAmVlMiN0mpW6eg/hdJ78trrSpKipHCY3Gf4x1k8aqnqJFafEK4KNNYA
         zJe5gklrNU0EfzuUVEoxTV60le0TTSNWfexv58NqBtRkVtNxvxf/wXG1UKWqxnnpGkrE
         pz6fU4CSR8gpA0RhLSe87kPh9szSzvHD/0L6javH9+51haiFw0TxPBh93RNiuE1mXhX2
         EidZ3cajpw91/q9Mmchv316crrrC/6GNGriKKIr86pbYGErvQtBGm82wrxqanDiSry+5
         JQMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=aQDgLgJ4QYq+bnCoQbXPJ7dIxOVm7g1z6GZ3jZb3kWg=;
        b=fVrNIy6VFl3S58Ne85j7CQOR3l5CYRlXstHQ8SZTPlN7myKYsER6Q9Tpx28fRFYYe0
         /0XvxrMpbf0l6lKOj3Yy/jPpakZPNiMxkSWU2gSvmPiCSrIAMC73bCh0Ib1HZCQD/fbO
         igUPXLA7aNabXx/s3vX1eDb9j/C7hEcKwdggaMfHCCzQ+qQDjUh2TYsDQhtxRBK0iaFI
         dY4ZMzKwjowvFD9OfKqMp26fn+01kD2GFewKY/O/GrYCx4d2yKTQYArzCa7oqYpoSgkf
         naCpx/tXrHt/o/vmLbB79oZqX2QMQlpOU6W+krTd3xAtY5XCHORAYEdE+AmXisKyxTD1
         0hwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id x14si833351ybk.2.2020.12.06.17.55.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:24 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4Cq5vx0210z79TJ;
	Mon,  7 Dec 2020 09:54:21 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:42 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 01/12] iscsi_sysfs: Fix NULL pointer deference in iscsi_sysfs_read_iface
Date: Mon, 7 Dec 2020 09:53:59 +0800
Message-ID: <20201207015410.48488-2-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201207015410.48488-1-haowenchao@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com
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

Check if t is valid before accessing it.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 usr/iscsi_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/usr/iscsi_sysfs.c b/usr/iscsi_sysfs.c
index 540adfd..abefde2 100644
--- a/usr/iscsi_sysfs.c
+++ b/usr/iscsi_sysfs.c
@@ -856,7 +856,7 @@ static int iscsi_sysfs_read_iface(struct iface_rec *iface, int host_no,
 		}
 	}
 
-	if (session && t->template->use_boot_info)
+	if (session && t && t->template->use_boot_info)
 		iscsi_sysfs_read_boot(iface, session);
 
 	if (!iface_kern_id)
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-2-haowenchao%40huawei.com.
