Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBYVA7CNQMGQEPGQRNBI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113f.google.com (mail-yw1-x113f.google.com [IPv6:2607:f8b0:4864:20::113f])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E08635CA7
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 13:21:57 +0100 (CET)
Received: by mail-yw1-x113f.google.com with SMTP id 00721157ae682-399c3d7b039sf109768407b3.3
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 04:21:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669206116; cv=pass;
        d=google.com; s=arc-20160816;
        b=v8aEUHP0/qxm4FT27hSxPs9EtbmRYU9d8azTszWibOYz5rzJJWSwwKbmbQAO4AkTuc
         kumTzs7bBUfE3IPKwbEBWML2EBKdpoVzdGvauUr3pgVdevDVDOYokOZCaVBZI2OIiX9z
         hscA0WYKbK+uMCRWz7xh2IUBmkHLgQoTO2SCpRlzArYxfezcfvdqEXctW6fJ0VPQ21V9
         QpBJ97OnngHFFPo+Mh8BFGNwf1GxlwhOB6fnA2jOkIxgFMWWVXUxA2vEpvIyqu9vuEx2
         Ct8tZ7C7mkXkhYiaXOk4SgAd356fQqc8ZlPqHIGNfVE7Sy76c52kZF0FK0LSBFD4qbQA
         lk/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=ZV92OTkVcgpFnJ0sRs+X1VkjFcgD5hw1hlTUGEEc+NI=;
        b=K/9vMze9ARoJurlCLJZZXqsppjaLcoAfVVvAa8FLHEmOIJ4grO/kf3cXTpa0dsOjF7
         p0djGwUbujD9N9pR2uSFVuKLaRHNVtokY6qa2ULJgiVT3L17+UIPp5EZUIO5LPViRaOG
         mVTQqk68Bwkm6wHwJdRtWU7KaqHku+79YGR6sm3pbIb/XqehHeFruDfIinujsC/eMTOv
         nugbPaaS97B5A603K/08G0SGgOCNUHL6pZ3Yn8mb+dEyJFQS9QhPiOqYjiI20kcadDND
         FHOUIr6Prh2ZoOL0/VZAh0NDtbjcqmcscN5oUGgAf1BXmqMORStKv89Shoyx4VmzoPEV
         gVpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZV92OTkVcgpFnJ0sRs+X1VkjFcgD5hw1hlTUGEEc+NI=;
        b=cboG+qZ4xhqSh++II08rwgl6XWJKgIG82LDG8L65aRLTOCEhibddsHGW+/YXbsHXWt
         xo6MuUQO2uDMVSyoVl3dSHwOiPIgtZPOZReIK4ypteg5c8fY58NgmbJGtb/oBnAK0SNE
         uR0gXIv9l57NRMrVFgUldtGmMme+8x5Pgr3rB2cH/1RD3PPD3YbHVXC/nOzDwZKJifCN
         X5QIqDKMDjLb2F+tfqj5dyotiNzQpQzTiBflvkNLpXijVTFpOegv18rZF6391RKuvYQc
         hQ+982tynPEzQIkXQNmIXLuG8Zaz+7yM41eOwy0fsyGMiNPTouAhWJpWFmiE0NBPaRDW
         paNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZV92OTkVcgpFnJ0sRs+X1VkjFcgD5hw1hlTUGEEc+NI=;
        b=T7zDPD2ibIUuWi2XZy7V2ef6GlIYP48mRSMxg+HA8BjQJQXkZLtfamJ3MWj+mZy1WP
         wyk/guLDvYFSSkZuVOU/TBlt3Es69eGZEGb5aLp/izqnqZujALB+FDFZY/DDWpSU6K9N
         xtRx7CN3i6tm7C9R6QM2HC8HGIjbETbvhIw7O4ztyRgsx9FTOpEgS+4LR1S15Ur0Bxvl
         Oj26eV/cEDGoVNaRXSgXmfSAgaO07PkVEIJFr/zVt6XTjM5WfjJgzSrIyvO6e0lONDxM
         aFCF8YnnnoJxGt5xTkwPy+EKYeDFstYJlOrv2j/FBfc5pfyUzjktcB87Alqfop7D4sk6
         kDsw==
X-Gm-Message-State: ANoB5pkW8WwYVxH1p7zRb1qVyuZujn6Ump400GjyXGf3jQIjZBNdUdD5
	Uy+zHOnCBSseddQ1rXZaUm0=
X-Google-Smtp-Source: AA0mqf4/CKNXtVlWejkFU4/iHNx1S2qIVKR5a2WP00eshR62MTEeKhOY4WFubu6wm1Xn70vTEYCnlg==
X-Received: by 2002:a0d:dc87:0:b0:370:61f5:b19e with SMTP id f129-20020a0ddc87000000b0037061f5b19emr25339493ywe.316.1669206115868;
        Wed, 23 Nov 2022 04:21:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:e53:0:b0:360:d89f:2b52 with SMTP id 80-20020a810e53000000b00360d89f2b52ls8441534ywo.2.-pod-prod-gmail;
 Wed, 23 Nov 2022 04:21:54 -0800 (PST)
X-Received: by 2002:a0d:ce84:0:b0:36f:d5d4:7e0c with SMTP id q126-20020a0dce84000000b0036fd5d47e0cmr26892244ywd.122.1669206114051;
        Wed, 23 Nov 2022 04:21:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669206114; cv=none;
        d=google.com; s=arc-20160816;
        b=w2LViHkFRSSwWmV1MjsFQNk9te2gBR3t+V1rRvkbHn3mqZ3BXPSZcjvcfFSmEbkxzt
         MtnvtEt2CQE/tD244MUD5HfK+5WfhCM+eC1+OJVnE1KiKOs+oH9JZlO+5eCCnA+jaDQa
         OCdkcACWuNqEBhY5IVto3CL98jwOW+eipQcfYTJtGJRA3ZlfMUmmmpzO6F7Lc3dHRvbY
         aslK/VJ8GqmgW6S/gOcBeYHQQFqj25flzfNAkhJrbPsyKE4yWuMabopiNSm9l+w864dK
         c00n8OxgsXAPql1mCRhORg2vxcbA7hUkt8J6JD1LV5/5IvQHAyFvZyZSBlMRehJzncpI
         K5pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=8YTxnvmNj5K6/HpTjTuCLIk+KnoXT2lmlAcQxmLnVPE=;
        b=NaWdf1xSXLOMie4OlVSL9aLa1vv1OlBPYR6ebN3GnOl6677cGKbsxPrM0N4qXaxH1R
         lzUbVSsji48xCcw0X+ytrf6SiTnU1NN056+sbj1GOFMZaDusD/HrrTI+XjAn8FD18/EJ
         cUZTXur4MRJw4I0Az7NQvKeTv8lGSLo2zw933SccJmbQGXqK2f1eORxDo7iBQgeVb4RW
         aOQvXgs5b8PwJcINqh3iSWkqlmWgZfQgS0OJ60n/CGarzNFJSc7tibVHPmQgCX129tqm
         k8pqAxmCTq578y0cjt7x60b04NP2kcAV9OcQy6z775O5qF4QJ8B9Z195hWA4lTH72HNZ
         4nGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id cd7-20020a05690c088700b0035786664d22si935325ywb.1.2022.11.23.04.21.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Nov 2022 04:21:53 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.54])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NHKsk3zX9zJns8;
	Wed, 23 Nov 2022 20:18:34 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 20:21:50 +0800
Received: from build.huawei.com (10.175.101.6) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 20:21:50 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Mike
 Christie" <michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v3 0/2] Fix scsi device's iodone_cnt mismatch with iorequest_cnt
Date: Wed, 23 Nov 2022 20:21:35 +0800
Message-ID: <20221123122137.150776-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as
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

Following scenario would make scsi_device's iodone_cnt mismatch with
iorequest_cnt even if there is no request on this device any more.
   
1. request timeout happened. If we do not retry the timeouted command,
   this command would be finished in scsi_finish_command() which would
   not increase the iodone_cnt; if the timeouted command is retried,
   another increasement for iorequest_cnt would be performed, the
   command might add iorequest_cnt for multiple times but iodone_cnt
   only once. Increase iodone_cnt in scsi_timeout() can handle this
   scenario.

2. scsi_dispatch_cmd() failed, while the iorequest_cnt has already been
   increased. If scsi_dispatch_cmd() failed, the request would be
   requeued, then another iorequest_cnt would be added. So we should not
   increase iorequest_cnt if dispatch command failed

V3:
- Rebase to solve conflicts caused by context when apply patch

V2:
- Add description about why we can add iodone_cnt in scsi_timeout()
- Do not increase iorequest_cnt if dispatch command failed

Wenchao Hao (2):
  scsi: increase scsi device's iodone_cnt in scsi_timeout()
  scsi: donot increase scsi_device's iorequest_cnt if dispatch failed

 drivers/scsi/scsi_error.c | 1 +
 drivers/scsi/scsi_lib.c   | 3 +--
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221123122137.150776-1-haowenchao%40huawei.com.
