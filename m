Return-Path: <open-iscsi+bncBAABBNWDW2UAMGQEFM5K7PA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x40.google.com (mail-oa1-x40.google.com [IPv6:2001:4860:4864:20::40])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B857AB35F
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:24 +0200 (CEST)
Received: by mail-oa1-x40.google.com with SMTP id 586e51a60fabf-1d6fdbe39c8sf3264195fac.2
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392183; cv=pass;
        d=google.com; s=arc-20160816;
        b=yJTWKCXigqkv65vIKxYdPexNzIQEJr5b/YZdHIIcD0EyZh+hhRuq5woKfpfDmgkmQU
         mYEQxMf/uvNG7TP8ZK0lLzzppyl9AMSmYW/1Tgc9+kF+oZyt22q0eFHVxNv4TUUCIkmq
         yIUAw9LbAvLUg2O+wVaXcqxBNaGeeJK31/2G8L7n/KNTJ+NFi1sT4CIfmMMS9DE/9H1A
         UzWrreCNEd5vYDat9WAJe9wf7oQrrksP/qDaoJidEipHcB6EijykY92zg2DwW9TwpS5C
         dx71nX6UXH8MUq02JQHjobhZUNII8nyd9W227TpcZ24poDlItvHqHGBfYv71hfklnMfK
         cq+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=evmPUsmEGBrnB8Nf4mHWongenWDJo+flWbj5RhX6BFg=;
        fh=czI/RuS43lIcejQG7heSpqlilKbUywFjC/3GVjzlias=;
        b=hWCgTK/MJP4Amh8IFXBEKmFrYI7obTDXqKTrFDQYBrsmzz1+6TIM3Xnwc2LWpOgn7v
         p4uDSkTBJS1cWOzWt0g6vefGer4ru9wqzeekVnMWxiZDwlrlwy1bHAOytULoCUX2HSyS
         /Mi22ngtiiNo1X1Dic+cqwNpyye/RH3g09PU6jZbzk6boTc4LyJq2rGQSEdrZ9Niiah5
         sGK4J4ImML5cUaT9F/dAGNnxprEco6x79/gGvoR+WZ6FzHGBXxhL2BBjnkYSed/wWDEZ
         D5vW7Qn8NRdGgVP8m6FByc885CW5j8PE6tHwfPDuHHuih3DXBWrEJFKE16KgXCuYAMyT
         JDQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392183; x=1695996983; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=evmPUsmEGBrnB8Nf4mHWongenWDJo+flWbj5RhX6BFg=;
        b=YWq3dTZxQSpmP6Zshn318p+e6GWizK7X36Z38XMvFK8yS2ztQp9rjhrFz5EOsbHv74
         oY34gCPDSvH9jlV827H2sgglnHJtYm9P318u+UzHUBu5ldOK6xuOd5EWX89Ng8+Zr4O8
         Xa9kcnA2UbWDOcF0GXwnoU4w2ZKMFZBeNCQeZ+5PvIXu5dpsyfXkAhyZAlx6Uy5Tbcyd
         mYRULyEaWBQS7CnE3heEjJh8rDedpkHeDSdQ6Aci2dfOpywCKgf1p48nohlT5KqgalPj
         9Oq2DvjaWx/6F1hq8McPMqMHm3SZxZI0PJVcNfpyoAixBb3bOGrPVauEbnIzCpm0bLGI
         ykbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392183; x=1695996983;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=evmPUsmEGBrnB8Nf4mHWongenWDJo+flWbj5RhX6BFg=;
        b=GjDrE1T2qZuPY51fdafg6xVSJipi2F5tNE06awPluPBrkLGfjkxYvj3SvhRT1YFZa5
         96kq8TNs2kj6cYK9UALoGB3Vj+FKggr2C7fgWAwb/rLTVxBLPOBLV6HhUMlAIm/Hrhwa
         O5+QDLZTVtnWoQwAzx1XAaX0VUwI/xEObtLrKSaA0YKkixFtLdygkICsA42HaDEtuHxm
         fqWlFtpzDECiSWo/TOxFHX8X2pAtkfW12qovUR75DSyyz47fRGd+ycGSiXKC4SOoVxdr
         fcGyYLB0Yoeun+p6gHT7NooxWWwlZ8u6BwKhlOtdgyVwCApdj3Xg6o5nWFEiRDCoxdgH
         /HyQ==
X-Gm-Message-State: AOJu0YxVkh/fGM4PjvJzT88TG9liv01YIpmpBpF2bUqr+3dm7ASFgwoO
	WwhXIVckV7pmCWWoZwnTaV0=
X-Google-Smtp-Source: AGHT+IHBmEEucIjqKuqJ+1EXwVUTdViYpqnHJ/wjiYjUyG9xIWpBESIcGg7nOa12nS6x5E19vwaNmw==
X-Received: by 2002:a05:6870:b28f:b0:1d1:40a6:e83d with SMTP id c15-20020a056870b28f00b001d140a6e83dmr9505886oao.50.1695392183431;
        Fri, 22 Sep 2023 07:16:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:648f:b0:1d6:5e48:6ce7 with SMTP id
 cz15-20020a056870648f00b001d65e486ce7ls1461076oab.2.-pod-prod-00-us; Fri, 22
 Sep 2023 07:16:22 -0700 (PDT)
X-Received: by 2002:a05:6870:1b19:b0:1d6:6bfa:ce18 with SMTP id hl25-20020a0568701b1900b001d66bface18mr1092094oab.3.1695392182055;
        Fri, 22 Sep 2023 07:16:22 -0700 (PDT)
Received: by 2002:a05:620a:2714:b0:762:30a9:f2a9 with SMTP id af79cd13be357-77417e3e21dms85a;
        Fri, 22 Sep 2023 02:37:32 -0700 (PDT)
X-Received: by 2002:a1f:c806:0:b0:496:1f95:209a with SMTP id y6-20020a1fc806000000b004961f95209amr6346378vkf.15.1695375451770;
        Fri, 22 Sep 2023 02:37:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695375451; cv=none;
        d=google.com; s=arc-20160816;
        b=tVkR2Kwo3QNAHMtGZ/oQp6Q8xa6fZmHA1VJnj+2xSrIUbFEk526LA0LEyemRBakORP
         B7jnNFrWCDjo9MNMhEHKGKWyPk6uo1qokZAyJqI1xJwedh6F+VkoJ5mAaOg460Zo2ZOw
         DLUuzi9xQ1j0JjlHsE3U+o/+vjfrSgnHpw7l2pUYgvxWtE4vK3+aqP1ZhnP1zzRv8ieU
         mFj5Frd5d1VXDjyoscKExAgGwMX+heRp0z87JLT+UU2Dc771Wc6OsyqLVA6Qxj/rGKVW
         HN8VwThDJmDUV7oYy3uXCjhjD2TV6tzvtEfMq7P9caU4emnIpTP/+mMe2CEkr0Q1AEC2
         T7iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+ENTlMtxnBTgd1Hz7eOykHNjcnwFfUipQpPFphAQRfQ=;
        fh=czI/RuS43lIcejQG7heSpqlilKbUywFjC/3GVjzlias=;
        b=SbDUpJJ32oY6iRJGLmnKStgg72WzRFTerwAt2/WedGuQtIpxXCVhOFsGsFar20SIZ9
         xkRMgMjWIZaKmMv5I0yrBGxZN5ldzeXOnF0mk4R9FaLJWACmwq3GftCfSDW8L00zXDzt
         gd+2kUTNuXO9oMddrurIP+QHb5As7misekq32lOCNv0Jd8mYm+B7h8BE/yN2E3kMf7sw
         SfdIO5hLH2uWkx2qk68ebciYHIqh/M4IMDt+FRGXhMIRNiEE/qKvNt/3U1EF9sPGw9F0
         ImVkuJGPW23Eonnq2mmW0JQ7VHvlsATnb3FZ1YhdLTLUNHnGKqLLPpNC1MxdFYbx56/n
         RdvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id x8-20020a1f7c08000000b0048d29aa0861si575662vkc.1.2023.09.22.02.37.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:37:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.55])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4RsRty3PB1z15NP6;
	Fri, 22 Sep 2023 17:34:50 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:36:58 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH 1/2] scsi: core: scsi_device_online() return false if state is SDEV_CANCEL
Date: Fri, 22 Sep 2023 17:36:35 +0800
Message-ID: <20230922093636.2645961-2-haowenchao2@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230922093636.2645961-1-haowenchao2@huawei.com>
References: <20230922093636.2645961-1-haowenchao2@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as
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

SDEV_CANCEL is set when removing device and scsi_device_online() should
return false if sdev_state is SDEV_CANCEL.

IO hang would be caused if return true when state is SDEV_CANCEL with
following order:

T1:					    T2:scsi_error_handler
__scsi_remove_device()
  scsi_device_set_state(sdev, SDEV_CANCEL)
  					    scsi_eh_flush_done_q()
					    if (scsi_device_online(sdev))
					      scsi_queue_insert(scmd,...)

The command added by scsi_queue_insert() would never be handled any
more.

Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 include/scsi/scsi_device.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device.h
index 75b2235b99e2..c498a12f7715 100644
--- a/include/scsi/scsi_device.h
+++ b/include/scsi/scsi_device.h
@@ -517,7 +517,8 @@ static inline int scsi_device_online(struct scsi_device *sdev)
 {
 	return (sdev->sdev_state != SDEV_OFFLINE &&
 		sdev->sdev_state != SDEV_TRANSPORT_OFFLINE &&
-		sdev->sdev_state != SDEV_DEL);
+		sdev->sdev_state != SDEV_DEL &&
+		sdev->sdev_state != SDEV_CANCEL);
 }
 static inline int scsi_device_blocked(struct scsi_device *sdev)
 {
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922093636.2645961-2-haowenchao2%40huawei.com.
