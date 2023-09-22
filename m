Return-Path: <open-iscsi+bncBAABBMGDW2UAMGQEUWOQ6AQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x37.google.com (mail-oa1-x37.google.com [IPv6:2001:4860:4864:20::37])
	by mail.lfdr.de (Postfix) with ESMTPS id B05B37AB359
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:18 +0200 (CEST)
Received: by mail-oa1-x37.google.com with SMTP id 586e51a60fabf-1dc27f7c838sf2928803fac.0
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392177; cv=pass;
        d=google.com; s=arc-20160816;
        b=SCBK7qg8R+yAH54eHP80qMxMGqf0zUI8L82iPaieDPTsU7WsiNA+tUKDHBmlTVx2Je
         kKpRuNitPnDqdR+wl2lKix/OoOvcqeDak33paaQkohpLEjc8QersYRmcfbsPqM1RtPZB
         r8tp1obwYBjtjpTAR1G8g2TFYRmAYGa2qgnIGcdXHXR1bzRpne3cMDcLhD9uZy90j4rS
         ckWcP374QkXallBuqCd0uwiwEoXVIkiypnWxKLhWrDD23ai/aoqviwIufYUj6yF3R1pY
         IwVRtWsKCIa8C1MdHjiHmuupRHDYEqDppJ4HYvFym6F5gKakJlduXzOYfzesqwkUZRcL
         kOHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=cnoaVPkRv5UxoRXaKbD9cD9IJ2JUJUehBsxMreY5AOc=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=tDT9fGnsWlMY4IEeeHAwIzdy60MQrFeD8BDUu53fWSuZbojgsVCwXog8b4b0xBKlWT
         v8QGgpnVrIX6xFrkbKKOjlMHbkSTfNqIwo/eq2Msb8MNnr4KChEP8DUDUAYf80d4AW7H
         MnOAO/HHd6YmSyi6lIcWkeQ2+VIIktpueqR81c8kaRK0iF4mAwp8LXmw4R/izPD4m0tH
         Ati3QH/YxgGar5NBFRcIr/r5/e9mgt267NM+ll6AsSr606kA7/IfOlGFJBIiu5U0RL5/
         nYq7b/g8s1npBOjPhjmaYC65y152JzYRsn1078piaoEYxDppQrtvkCfdcGB+3nOylM+E
         cNhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392177; x=1695996977; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cnoaVPkRv5UxoRXaKbD9cD9IJ2JUJUehBsxMreY5AOc=;
        b=jQOsrVMavZRAJaiHIq1jDjfn4DB612PesA2uhHEVuwyMyGGqd1QxWIN+zY2HjKFhoa
         MUG7kb8UMx8+TeU2FcWZtmXsn0aTBUacZn8zGsotxB04IKM/ovawdPqgRCwFcPB3xmlJ
         cPsa8ovxVtEprl7WyuWSDZz4pxF0n9SNh/dnMp5xLuYusA7xHbaSDkVOmDda8/zawH/e
         xlbMZiTPtomOkJ9FjC58nbTXDONXgF3xUCSUNOsMEwvUOqyOhvQBSRU31kfHOygUflNf
         amue5yn0v8bCOkpYPqixV0z6xzqA4Ku0hX7RGWETFLvKqRruuPlxw1mssHmwU28ZssXr
         Nbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392177; x=1695996977;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cnoaVPkRv5UxoRXaKbD9cD9IJ2JUJUehBsxMreY5AOc=;
        b=cMrF8J/NcyOAnQN+hSMHmzsg/0Va65vkXkzp1sJOkF3hQZtyOisLnHqiYhSPIXLAEw
         599R4z/tH9AYNfgvy7+x9sj36Sk7JdlbQ2ipN1TDJnl1F6sgSgPNIVbM4WHsWFwlfyPX
         1YFoaSm+MB8Q4TQS+7Mh8QhIeTVV7mVCCOgOrwk8vgLMxK/Y18ajyLriKwbckgChg6q4
         iIDAgJ8VIehEB0GTNZSv3fhqeNL3euxkKOFQtL23gbUa6M0uUqe+uI/rqMaP+2xAi3IQ
         o7xTxoGCVHcPw15NB02vp9du31p8uII2aqyy0dNw46en+8DMtvB44q6Xlb/h72zPUG7W
         YdOw==
X-Gm-Message-State: AOJu0YyUBOic4J2rtr1en8LMGu4zrbiRJtXVnPQUeESM93fyy81yUAlc
	OduiekTppafcf15gNR9rqIQ=
X-Google-Smtp-Source: AGHT+IEQ49kPfJkytuTy1K3T+iAvJ7YWMS1ZYS658iBdQnWCGfz/ACuTrQuigNicOqxzpMC6LuuS4A==
X-Received: by 2002:a05:6870:d611:b0:1cd:249a:690c with SMTP id a17-20020a056870d61100b001cd249a690cmr8482657oaq.20.1695392177393;
        Fri, 22 Sep 2023 07:16:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:a44d:b0:1d6:cbc7:fb4c with SMTP id
 n13-20020a056870a44d00b001d6cbc7fb4cls2667998oal.1.-pod-prod-06-us; Fri, 22
 Sep 2023 07:16:16 -0700 (PDT)
X-Received: by 2002:a05:6870:7696:b0:1d6:b110:2f1f with SMTP id dx22-20020a056870769600b001d6b1102f1fmr3364476oab.8.1695392176149;
        Fri, 22 Sep 2023 07:16:16 -0700 (PDT)
Received: by 2002:a05:6808:1910:b0:3a8:4c6f:5bc7 with SMTP id 5614622812f47-3adeec243a9msb6e;
        Fri, 22 Sep 2023 02:30:06 -0700 (PDT)
X-Received: by 2002:a17:90b:17d2:b0:274:77df:50d1 with SMTP id me18-20020a17090b17d200b0027477df50d1mr7536502pjb.21.1695375005647;
        Fri, 22 Sep 2023 02:30:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695375005; cv=none;
        d=google.com; s=arc-20160816;
        b=bYml5bnW0/uuUZ/6gK0erbubPCUwGi/p+FCJrg30SpOTT5X1RijiANZapI9n0Je8NS
         D8Ltr2nUXQmVEc+zpdSOb+tm1JseZ8SSBV78Ylxlbf6jAes7Ry3v+b8NZXdv++PdlzV/
         Bc70625XBGAA+dArAD/Wu8AtBSUI6lnN9d4nhifGBhnXiJY88SuJdoZbVmyoB8xeyIh7
         hakIKaphirBxDUQnysJa/fWCFhTu1OL2x4+SRK8cXsmKVcMQvepxqEUDMlxsZXQb/H70
         JX0q5SFznLDbLwwA5zpmX450Bemn7SgEIbZ6RGGQnFZPBqZmktXLv9OEDDHHr8eC379q
         9+uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=N6WwxwIcbPfkgNi3aY9NOF3oFzlUeilablusCcr8qoQ=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=g9SFAZwpBg0g54Rky0RtlWi/AENN6se7qXtGCsp3N2hs4YCwcf2u0QWGLFSiw2Q+A4
         A3Gt9FYUVPtEBlpLPOodUS5T5xahNaFtgGNoJSTXhjWQCzeqbP1QiQt82CLvkAKhd2oy
         RFItwncT4rCThfIY8TuQ5IWZLhtu4xiOquZCwoqmPaCG2M1MES0pHkksb1veN7LM1+aU
         SkbmgOK8qLNrkmZRL3/qKq36KZ+LGwxVlhjYLkEr/fNsDTna2MDV5/sevgNDCacOxPWh
         fKXFqcitZWMBMny0nYnMqTG4yaZ92vqjY499lJPi+WxjI0opJeADSaUtXH1Jjoy5SO+i
         61DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id c5-20020a17090a490500b0026faea70bbdsi780872pjh.0.2023.09.22.02.30.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:30:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.55])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RsRgw3H3lztSwS;
	Fri, 22 Sep 2023 17:25:16 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:29:32 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Douglas Gilbert <dgilbert@interlog.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH v5 01/10] scsi: scsi_debug: create scsi_debug directory in the debugfs filesystem
Date: Fri, 22 Sep 2023 17:28:57 +0800
Message-ID: <20230922092906.2645265-2-haowenchao2@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230922092906.2645265-1-haowenchao2@huawei.com>
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as
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

Create directory scsi_debug in the root of the debugfs filesystem.
Prepare to add interface for manage error injection.

Acked-by: Douglas Gilbert <dgilbert@interlog.com>
Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 drivers/scsi/scsi_debug.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index 9c0af50501f9..35c336271b13 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -41,6 +41,7 @@
 #include <linux/random.h>
 #include <linux/xarray.h>
 #include <linux/prefetch.h>
+#include <linux/debugfs.h>
 
 #include <net/checksum.h>
 
@@ -862,6 +863,8 @@ static const int device_qfull_result =
 
 static const int condition_met_result = SAM_STAT_CONDITION_MET;
 
+static struct dentry *sdebug_debugfs_root;
+
 
 /* Only do the extra work involved in logical block provisioning if one or
  * more of the lbpu, lbpws or lbpws10 parameters are given and we are doing
@@ -7011,6 +7014,8 @@ static int __init scsi_debug_init(void)
 		goto driver_unreg;
 	}
 
+	sdebug_debugfs_root = debugfs_create_dir("scsi_debug", NULL);
+
 	for (k = 0; k < hosts_to_add; k++) {
 		if (want_store && k == 0) {
 			ret = sdebug_add_host_helper(idx);
@@ -7057,6 +7062,7 @@ static void __exit scsi_debug_exit(void)
 
 	sdebug_erase_all_stores(false);
 	xa_destroy(per_store_ap);
+	debugfs_remove(sdebug_debugfs_root);
 }
 
 device_initcall(scsi_debug_init);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-2-haowenchao2%40huawei.com.
