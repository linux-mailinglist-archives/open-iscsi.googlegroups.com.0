Return-Path: <open-iscsi+bncBAABBQODW2UAMGQEWZ5NRDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 283D27AB364
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:36 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id 006d021491bc7-57b2fa97912sf2839119eaf.1
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392195; cv=pass;
        d=google.com; s=arc-20160816;
        b=ltYTgcpwolE8m/PTA5KBLEEO4Zurnz7/novC1mDy8rSbGlPkZXEBm7d4sk9MLp6YRm
         YYQLbejKgjNnoPCXT200JVXSGR0uCHQRvpJfINFygMCXRCwXWDMEDgGUVBvQgte6f8bk
         8/7amWiS98RixoI7UFSpoG1VLO/SeanthAwVGHwXCpAHwRh90ylKJEXDH8uSKJS3HMHY
         rbhhtbZn207IbBCs6GYBTJ1aPMbTdDIToIGNFCjKQstjo/2TaDH+unSz7Fq4Srvp5/CB
         YbdXHf4HL0HKcDU9x2bLSin3xE3RxhPFmQfi4rm6/ssdSTVncEjMs6GsVked3YDf8vs9
         RTWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=91q32kFw5VgRnwh9xOWQfZU+fyDLwMig/eiV1uh2W+M=;
        fh=czI/RuS43lIcejQG7heSpqlilKbUywFjC/3GVjzlias=;
        b=QnGmw2dGTtN2QrNPC0b4I+0TqlOItb4zIzLS/A+CQQ7k+IwuZp9RBFniZj6sc0RLBi
         BOuNPfoYLHC8LsxlUMbcMPeuIgb1YO6/1irPKWDvou693E+HmVMmM/3IoCnkiuuvI3YP
         0CNZirMabMpuavJIVYVsqwAvkk37++yKzaSUmZCqn38NMQw5dYDEW6/xPb1ku1Vv4Hea
         mtgX3afOTaUPwnUV1u9xhALmnTeU6n++QhLa1oTUAy5fn9E8jTJuI7oy2qaUUEyCI+rv
         B+nFc0IydtniFvMG+YwnSV43gyJsEyWQCOyLr5WFmZzcClslpSpmVPjEgofqlf1s/uMM
         vD/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392195; x=1695996995; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=91q32kFw5VgRnwh9xOWQfZU+fyDLwMig/eiV1uh2W+M=;
        b=Q0zYSGN4jDrlqmmrNhOzv6326cR9wG7cJ1WwjZUC7JgHersQzNTRW2fPpTaRxnnz1O
         lbKSuErlMF1NZ/+wov0pK26rR27omiV+9E9elwmng8/EfvZCyYyxUb6t7k74JT4cS6Mz
         XP63udFSFVeoNA+uLFYrdPBSrlSe9sVUJSylQSezdgh7Ls5qCZnhZhfw2T8mb7tbiQeK
         tjlyC5eG9XNZLVMc8nmW8dSWv+YZWiXVNiAYqK87oI/N9NDnYN1De5CIZavrpWgsxUm8
         srhN47yxEceYF/GLST1Ol2gAhfG8vnFOGMF8d9Fu+u1oK2eQk+iuV49b6TzLZKP0V+ye
         71EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392195; x=1695996995;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=91q32kFw5VgRnwh9xOWQfZU+fyDLwMig/eiV1uh2W+M=;
        b=s5ws//uTHAxGFbmw9r6UuMMqSt09yh59fXJifQsIx4+o7DzUu3ywtWDi3Fuv0eG2py
         KjS/2RCQ6uwapXmWox7uPBX8LnhfOYH4gFTqxJYz/8V3gGu6LKzwZ6WoPEIrtd/+h7/g
         lx93a2s2mC9bJs9kN2GNFNVPZufaQ+dI6i6wyXOjTy21WSKae2LnWG92bKLCRl0b68DQ
         S9vqbGvpcMvk3JQuK1KvRtHgOzwQyEMtzAt2vagkxViN8S3xARENVAvSjfgWvJliHs+x
         GsbCeOvuXYMAy1Ubaskd+hVAdZ8PAIXhPkPtTfe+ereCcNF25YwiN4sm9oWPprZNMD6K
         Twjw==
X-Gm-Message-State: AOJu0YwUmMViiD5LLzB4jthXIT9AnJ5le5G1xwUkog1oZC1ktqKgcOuy
	jIFL+UfL23IPAvM9XoMDS84=
X-Google-Smtp-Source: AGHT+IG9UuitqGQIST6i+ZEp7kfcpEQD4SmxVQnqpLL1seupJbvEb0Td0zcU6F5SPefRFlrbVoQ6Og==
X-Received: by 2002:a4a:614d:0:b0:56d:2229:5f94 with SMTP id u13-20020a4a614d000000b0056d22295f94mr8122131ooe.6.1695392194893;
        Fri, 22 Sep 2023 07:16:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:a744:0:b0:57b:7aef:9d04 with SMTP id h4-20020a4aa744000000b0057b7aef9d04ls671747oom.0.-pod-prod-08-us;
 Fri, 22 Sep 2023 07:16:33 -0700 (PDT)
X-Received: by 2002:a05:6808:199a:b0:3a7:2570:dd11 with SMTP id bj26-20020a056808199a00b003a72570dd11mr4263635oib.6.1695392193585;
        Fri, 22 Sep 2023 07:16:33 -0700 (PDT)
Received: by 2002:a05:620a:8ecc:b0:773:bc0c:3d88 with SMTP id af79cd13be357-7741801c10dms85a;
        Fri, 22 Sep 2023 02:39:40 -0700 (PDT)
X-Received: by 2002:a1f:d881:0:b0:496:1ad2:9d0f with SMTP id p123-20020a1fd881000000b004961ad29d0fmr7575362vkg.1.1695375579841;
        Fri, 22 Sep 2023 02:39:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695375579; cv=none;
        d=google.com; s=arc-20160816;
        b=dl4KLFBb7JayWADK8c2BjgVkXsjl4HlSCMowVMMu1RHWxTU30wAOZkc3P1B01py6CS
         lxK6CSkOmSZEiX0/QDSLEIPkM9wuT5oDyk4dTFs/4LYOoh9SXZ40O13IeSELNX0k9zhw
         gOqQOxKBfnDPaGbGKVGG9/oEcogUXhNhxAMabvhsUz6+ZZ2WwK7F+ieb3gWa7N8v7tLE
         +TvZqr8o0JJC5EvntKmYXCmn9f7Vt4i07BslnFkatxFlKmhtfgUNyPWmCCFECtMA2qR+
         YzM7VYNu0sYmLTObmX2pnReSYHebclENEhAFolMGL0V+ymmsZ18CzSHrDjWsCIvMd2rM
         3/wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rPA8MSMJ8Ho8H+VmpnWrqcLPduKaYRFcpo3eauznfsA=;
        fh=czI/RuS43lIcejQG7heSpqlilKbUywFjC/3GVjzlias=;
        b=rCHFK5zKXi5HpBTP2hJltuAWYF9EEHK4xkvcYKyDKEzqF9mgwUmbz0f7JZxEpCvs26
         Cxw4hBv96dasp2Q/IuTqDJudYvO97lg9gzaw4lF7i1WvMGwDwMF3qBnzi09bmoQ0pem0
         XeRNHy9KeaHHe5igrMtujonWqOI7tIMop9tKZpVsTJWVJ3sIhkTmr/PWdvKQ3ZlxvkHP
         31m0wBWmaJzTw6Fmf1vqeMBLABBpf9JP9wlUktjxjpiT/ab8DzHNf37FHLqVIvurFQz2
         IQc+a7V0XaWRoNF98T4TTouoBMSkAFwlfmYazeBgcK2RCVUVUarn5JPwWG4VPbTa/UQy
         lmgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id bw3-20020a056122190300b004937daab34esi225885vkb.4.2023.09.22.02.39.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:39:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.56])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4RsRvj2s01zMlmt;
	Fri, 22 Sep 2023 17:35:29 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:39:06 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH 2/2] scsi: Add comment of target_destroy in scsi_host_template
Date: Fri, 22 Sep 2023 17:38:42 +0800
Message-ID: <20230922093842.2646157-3-haowenchao2@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230922093842.2646157-1-haowenchao2@huawei.com>
References: <20230922093842.2646157-1-haowenchao2@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=haowenchao2@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao2@huawei.com>
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

Add comment to tell callback function target_destroy of
scsi_host_template is called in atomic context.

Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 include/scsi/scsi_host.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index 49f768d0ff37..a72248fa5adf 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -245,6 +245,9 @@ struct scsi_host_template {
 	 * midlayer calls this point so that the driver may deallocate
 	 * and terminate any references to the target.
 	 *
+	 * Note: this callback in called with spin_lock held, so donot
+	 * call functions might cause schedule
+	 *
 	 * Status: OPTIONAL
 	 */
 	void (* target_destroy)(struct scsi_target *);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922093842.2646157-3-haowenchao2%40huawei.com.
