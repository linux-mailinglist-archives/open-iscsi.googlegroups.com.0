Return-Path: <open-iscsi+bncBAABBNWDW2UAMGQEFM5K7PA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3b.google.com (mail-oa1-x3b.google.com [IPv6:2001:4860:4864:20::3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B56A7AB35C
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:24 +0200 (CEST)
Received: by mail-oa1-x3b.google.com with SMTP id 586e51a60fabf-1d6a6012069sf3038377fac.3
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392183; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ph1tZ4I7xfIYMLLDvItG21dLrfCa1JXbQU+/Xr9a3apn9y5d2keZUep2amqoNxh5oG
         RQZms9FzCLkSIXrA+J5DO0K6JwMHHpRBal3nmHdJotETh+uZDU9q4ke3BPStKYAyS8+s
         8fh/9JZXmGBqIksL87QoPPX9FQLg6/MoO0Na1l136TvpgCoFfqG7FX4bz0+z2ewPmBQt
         otoM1VyPHdBarc1psln5JI02CtRgLUbXCpN3xsgp8sjj7F65ZxL9FEei0Uuf47kn/XQA
         h8Yi7AZ3/O+wwyvyiUNu1SGkqocu1Ouosp2R5kI3f9E9nwR99mf3vrh9Lo0VeaoCcnPe
         2ppg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=N4Y+1YwPsSUxSHyq6BSYCHDfyPkUI1lgfPatLx5JB7c=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=Tyjq2YcDTKxM2LFIGS/fBVFkM/qBz3dL22PmzB6Of5XyhEt4IpkvpAQxOp44RdZVnN
         BxGsbcldY4rNTDGYmR4JD7eg1kGCZK91SiaGEpii3edkjZ6i5mYUP97RVzhbsK4E4Vm9
         mL6FQIvrLGkGafFDRR13ZvgZIccDJO/Cw2RRBUiEn/w/dKoFbKGskvgrjIfdEpqhfdSU
         I8Olg4Sk+OpMzHTrYLh7FBi/3gseYG0h3kbd5M8SEwNSbDg7icBPk0/PSQWSSEuK33tu
         Hu5axqp6bjPky/WOyliL+qXCPYuYFg9cWVaE+DGEP4adherVTc5g2hRwDVQbNwd5xeOk
         z8fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392183; x=1695996983; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N4Y+1YwPsSUxSHyq6BSYCHDfyPkUI1lgfPatLx5JB7c=;
        b=su5BmeyZDKmMUcPd1aaCWMrTT2vg/4wycQAssFodPs07nn6c1SqF+0sx6LnGD+7xdW
         ym57Oo747toDx36UnRYc/dXZXxv9OWvEeoTrq31f11Or/dlMlignsxki06Niu521E9vG
         Tee6KM9+wo52rH4r9FWEMd8hZfoZd2iaOGOi1YNUgyHdqb5Ik0IAnCFZvzyMj9RDTEih
         4BCW8m2cLDZqDAtRDNtEynrqRXss4dIaN0OtFEy89GbF/u1fucHYk0ewbPnKtKwjywmb
         RmQeZNJtdDr5OeIZZOOof9X9EwfFdmHj6Mg4TYNzmA3M/05mIMqKBRraYDnMGjzz0bHQ
         BAsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392183; x=1695996983;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N4Y+1YwPsSUxSHyq6BSYCHDfyPkUI1lgfPatLx5JB7c=;
        b=RcbPkm3rX6CqR7kcBRBwakKRFs/lxOgdUIwO9qHu9PzysTtD5m3jkrOTKsr/S4U7Ch
         /nx1RAqEFdL140WJIgsRcXgGDd7CrR8PMpAfGvn4plYetI9GgEcvRkfe08NNFznhVhNQ
         NVwbKZWxbqDEbJnKkK9Ef9vBnckcZIgo7WfIlq7lfjX+UbAKDgn4Z0WPsEg7GzZ2zRDQ
         Do23BPNN6wvKw5GEqi+dFzZUJKTW3n0h9+XaEXe0K6hxvZ1QV6YFWN97SEkkIMEVwmGr
         q7E6CfcKsCrh9vc/9UQpjCO/vPsj/jOCi1EEOlG5db8NQz+8Tg5dmmzrHyf1pB/sDU+N
         n14Q==
X-Gm-Message-State: AOJu0YwJrvmgdqq79ChADc3mW1Ttn273USAmuf4FJyPZ2imXWADf/0eV
	bejD7r8l5OoT+9kHjA3v1mE=
X-Google-Smtp-Source: AGHT+IFlhFG712yENlUVqkJYuv1lhLy1PWKqI1b4A5nwqbsST+LW1edo1dRgQOYLB5eCoraxRMRSVA==
X-Received: by 2002:a05:6870:891a:b0:1bf:b863:b6d with SMTP id i26-20020a056870891a00b001bfb8630b6dmr9551740oao.1.1695392183190;
        Fri, 22 Sep 2023 07:16:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:c69a:b0:1bb:933b:e6ba with SMTP id
 cv26-20020a056870c69a00b001bb933be6bals1410318oab.0.-pod-prod-07-us; Fri, 22
 Sep 2023 07:16:22 -0700 (PDT)
X-Received: by 2002:a05:6808:2020:b0:3a7:805:f419 with SMTP id q32-20020a056808202000b003a70805f419mr4336919oiw.6.1695392182055;
        Fri, 22 Sep 2023 07:16:22 -0700 (PDT)
Received: by 2002:a05:6808:11c3:b0:3a8:7920:a17f with SMTP id 5614622812f47-3adeec4b398msb6e;
        Fri, 22 Sep 2023 02:30:12 -0700 (PDT)
X-Received: by 2002:a5e:c70a:0:b0:79a:b526:2f1c with SMTP id f10-20020a5ec70a000000b0079ab5262f1cmr7831858iop.21.1695375011828;
        Fri, 22 Sep 2023 02:30:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695375011; cv=none;
        d=google.com; s=arc-20160816;
        b=UvHNNwdhof2C0MES5a1ezw3p4u+fnjllSJWrwpKkK2HyueTmyZRKYRbwB2Wo+xOoGo
         CYi1U2ndOStDQgCf1jWaVuzEdsz+lznobhSuSye3xZXuoG3GxkGwyp2kT7Y+j07YJIJh
         j28mixGtp3hqjAsrxEf/LDSXrQc/tx+3Ks6ui8hH2VrbSUpW7mYowRu6Hs756FpHUNCm
         PegmSAL2/TjNIabIgAmtbmZD/vBpbg/YpmqGViXlsvRlc+QwLA7seUO7m3z7gIaQSlZE
         cbQTYoBs2mnx8iLdVN/Mqw+suvP8mhDXO7iXktWTl+U/k7oZMoyHcS54fBQrOYWhlMlR
         hShw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rU5MdSvJX0c4K58o0VVIJTPHUYEOMmfxYLcpJNke8A0=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=DaGLTak9onDlel5DXmJJEyRKsrbYtd/JziPKi5s/igucJXhpnIbIwm692K6GJsG3B4
         Q0Ezyudv4de2CVdAG/dR8cN1TiD0CQTrrRslMZuVV2ZBoD/2xDhApiNGtWXTc3r/bHLp
         FTAFZcCrcY7577mzFbK7GNMDIBvFYfuXn6xVzog3GNsIHyQqLTz9u8tEYqTCRKenIlVl
         vZrGeUFUwKnwO587jYhSkCkzJdRYvk9ndy+G6bznB3B2SeBhIeiG7VnjDFxN0kVRrApc
         P90Mpvl510SgGV4SFSSqwl5x/boSSyiBOyjFQH9wF4y4NTbjufVpFGex1Fd5+YGrfiSl
         3uwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id g5-20020a05663811c500b0042b05c84035si418043jas.7.2023.09.22.02.30.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:30:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RsRkV0DkDzrSTM;
	Fri, 22 Sep 2023 17:27:30 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:29:38 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Douglas Gilbert <dgilbert@interlog.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH v5 10/10] scsi: scsi_debug: Add param to control sdev's allow_restart
Date: Fri, 22 Sep 2023 17:29:06 +0800
Message-ID: <20230922092906.2645265-11-haowenchao2@huawei.com>
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

Add new module param "allow_restart" to control if setup
scsi_device's allow_restart flag. This is used to test scsi
command finished with sense_key 0x6, asc 0x4 and ascq 0x2

Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 drivers/scsi/scsi_debug.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index ab4a6f7de1ef..52a9ddea57d3 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -843,6 +843,7 @@ static bool have_dif_prot;
 static bool write_since_sync;
 static bool sdebug_statistics = DEF_STATISTICS;
 static bool sdebug_wp;
+static bool sdebug_allow_restart;
 /* Following enum: 0: no zbc, def; 1: host aware; 2: host managed */
 static enum blk_zoned_model sdeb_zbc_model = BLK_ZONED_NONE;
 static char *sdeb_zbc_model_s;
@@ -5469,6 +5470,9 @@ static int scsi_debug_slave_configure(struct scsi_device *sdp)
 		sdp->no_uld_attach = 1;
 	config_cdb_len(sdp);
 
+	if (sdebug_allow_restart)
+		sdp->allow_restart = 1;
+
 	devip->debugfs_entry = debugfs_create_dir(dev_name(&sdp->sdev_dev),
 				sdebug_debugfs_root);
 	debugfs_create_file("error", 0600, devip->debugfs_entry, sdp,
@@ -6186,6 +6190,7 @@ module_param_named(zone_cap_mb, sdeb_zbc_zone_cap_mb, int, S_IRUGO);
 module_param_named(zone_max_open, sdeb_zbc_max_open, int, S_IRUGO);
 module_param_named(zone_nr_conv, sdeb_zbc_nr_conv, int, S_IRUGO);
 module_param_named(zone_size_mb, sdeb_zbc_zone_size_mb, int, S_IRUGO);
+module_param_named(allow_restart, sdebug_allow_restart, bool, S_IRUGO | S_IWUSR);
 
 MODULE_AUTHOR("Eric Youngdale + Douglas Gilbert");
 MODULE_DESCRIPTION("SCSI debug adapter driver");
@@ -6258,6 +6263,7 @@ MODULE_PARM_DESC(zone_cap_mb, "Zone capacity in MiB (def=zone size)");
 MODULE_PARM_DESC(zone_max_open, "Maximum number of open zones; [0] for no limit (def=auto)");
 MODULE_PARM_DESC(zone_nr_conv, "Number of conventional zones (def=1)");
 MODULE_PARM_DESC(zone_size_mb, "Zone size in MiB (def=auto)");
+MODULE_PARM_DESC(allow_restart, "Set scsi_device's allow_restart flag(def=0)");
 
 #define SDEBUG_INFO_LEN 256
 static char sdebug_info[SDEBUG_INFO_LEN];
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-11-haowenchao2%40huawei.com.
