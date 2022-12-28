Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBDMFWCOQMGQENVWZTDA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD75657445
	for <lists+open-iscsi@lfdr.de>; Wed, 28 Dec 2022 09:47:12 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id p12-20020a170902e74c00b0019254f41f6asf11076426plf.3
        for <lists+open-iscsi@lfdr.de>; Wed, 28 Dec 2022 00:47:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672217231; cv=pass;
        d=google.com; s=arc-20160816;
        b=HsVjNEz73hl4Spba89v1Z9uLuEVR/tBtghWlhJMF5Udq16VNPD5q+QkOe46nhk64zZ
         8aF2csllblfKDLn0B2pv+NxI0SJ3gibnOqvYW4uLCHrUnGG5/owWczcNJEF5NxwOmv+V
         5PMUVG6llZZBsyxSLLr8hGUAOToNWYlPb33eGaNcY9FoX1nWNAXqPW2sb1GMpIuqu0tp
         Jd8khOokUIYLt45qPqX5LPnW38yozU2f6BA1i98Ti+2rphFJd3/63oV9W/Tyum7wjsfo
         T8/P3twKNAjmdYLb2skanwCXvX2r9NvhaEO8DBBwhnE6zgw1JZtTuUyIhqygOWgB52sc
         bLhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=J8JxAsb091M7WFDsGbcK9vY+KaCHXMxfO3DcTSxz+24=;
        b=OWefjx6YcklAodxF0OgLK6643Tps5qqZx0Djq7spVoieu68jytMh8xbvvCrwOdL6d8
         LlYlrIcWPBIAVh6SiWAaVn33+qPGx3E+YFKTAfXE9zmCeFxpfbt7guNHXiE6mJt/cq6L
         mYGv0m/kOlBu+zw4rhcMmWUma0aFYU79Lxcqn6OQfTyHUjX9FBrA4xoza2s54qmyDKDZ
         rPq2O6+2ijKOesVQBxknmJdUp8tAteYjjOE5nB62H7h/0ezOOEg2PWxnAo4cmPdOmarc
         eX1Ti5ONUxZDutBOVzFtzOK8c2Qt5l53x9x2nX8vI+3Xg0wPTGc2xOjEPJqNHrVXsfWv
         oKVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J8JxAsb091M7WFDsGbcK9vY+KaCHXMxfO3DcTSxz+24=;
        b=bOR+Luu75Hhjs8AV1buY9INfXUQb+A3Hx1ssF5T5BsFo8OZ5i1pmL8xzkx1PYi+mQF
         KbioM9QDzDEL+4BReSBeeDUOilaumovYAjCYUfP+cXrX4R6xrSqFWMuGu9eWFXHfeXDV
         SrjpohHatOOCyy0BEUtm+e9xs0hzoUPK75xphnhinKacUNKvfQL/D0soJGbJzbJQZMZE
         QcRGr75ZQRQ24yIsQVMkvKjPm4blYUkJfCSD722SwnAROjwGbnKzPi+1xnR1dLfwXqU4
         LuQaJX+i3TNUpzpYj4ETVk8/Zgp7G/t+X9NipMfUwcgOHEJ2qKA1CKtRaf5WULjov5hM
         1q5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J8JxAsb091M7WFDsGbcK9vY+KaCHXMxfO3DcTSxz+24=;
        b=orxIpLj2DqD9vDj/5gfEmP8JUSUkIntWGPDqp1L0h5udYmvyPF3OP1NvLkQ4ICQZ+X
         uKnidgBgS4nV3so5rFhPZJIlZi9OTmG2KwPcD8XEefJdYaVnPbi/zHhr0j6qWd7+bAR/
         ZhRsU/mIcZo1fv5Y0/iylPrcOV3RJMSF6dy4iGjJhsNQcUVb2qpu1toNMzykhDrei6FJ
         3Gb8Qnirkf/9hGNRInL3bA6g14I0HkmM5ynQpDHSJW+QvrBqeVRWAFcLhviK26kof7YV
         dO9Tpp7ZbrD0AplPo1sBVv0bgcHmDU2suqbshIsxg5TGGQhgwEhJ6KGcN6N7WBgkC0rs
         0sWw==
X-Gm-Message-State: AFqh2kopefckdPEmJzfAmttceYv+lYyWMhF47Pi0s73dyN+dlX2UBubv
	DsbfbVfy2B7xPetlRJSEI/E=
X-Google-Smtp-Source: AMrXdXsXVOqABQDRxWDbZTkUcpUDVtKh3rNjvtRyzqSC/ecpYHbqbjeU7XTz3da2oNO3KDvBKtAOLw==
X-Received: by 2002:a62:e115:0:b0:577:5b2:5ec0 with SMTP id q21-20020a62e115000000b0057705b25ec0mr1552699pfh.28.1672217230621;
        Wed, 28 Dec 2022 00:47:10 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:a893:b0:219:4318:f24e with SMTP id
 h19-20020a17090aa89300b002194318f24els18300650pjq.0.-pod-control-gmail; Wed,
 28 Dec 2022 00:47:08 -0800 (PST)
X-Received: by 2002:a17:902:a406:b0:18c:1bc5:bd58 with SMTP id p6-20020a170902a40600b0018c1bc5bd58mr27332561plq.9.1672217228734;
        Wed, 28 Dec 2022 00:47:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672217228; cv=none;
        d=google.com; s=arc-20160816;
        b=lCXPPoqMZpPXaM+56Z4zwpO92mirE+Y+bRYeoVUR6rnq0fNfj4hsrb4HFUY2Dzp9uN
         aEARTcGvp+32vvb0cr8MZuJbra8xreduIyYGcQWIEW9Up+/qSdPxaECnHA8JLj7VrIkU
         9W2hn0jGIqaOySMcEaVMslTprHDsJ8EJt7dpc/aWQ6JXJEwR+t4XmpcTlK0diNdzP4j0
         wy940voc4amgZ0vLVJ3jNV0AfOig8LNWi+ibC46TQ1y2mfB08Pksg6i/2duC658Fxm+k
         fLHRSA30iBrXYq5u9qQPQxmz4gOyj/XRPcy3bqVinQxDCiyIgNM52HOMiYm3OWFXfGN+
         XLzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=Y+LrQr5/kiJEDeo3OLcsSZF/6ytY7ipaKdd40Dhj5RM=;
        b=TuWp78Tn1hcwKoWXXpF+hyX0gYmq+foAarYuyWhbqWlzW854EpA1e2A2LzT6pW33Cp
         okxdKQ/ouNbl/Z4730fHk+rT2x+O3/3b+ehyaJ3iKXNG/GOxncR1SsXPVKj5IJbB0Jrp
         ygPJ0G0Yv2Pm6J0KeJCetJM5/lVpeOuNdMlf2CB1wpFJF3j4Vw5OZH/m3L/L3yJ0Z/2L
         ZqcUI85nZtTwhIYyU6AGNHINl5cyskwchVe11lP5lE+1QXfyD9aUzHn0kq+RFUOj7039
         0R2hw9YDquWZyraRLrcArBat11oxvF9U6h+U9wk9JvoUdL8Jridn/VXEfcUPvqAXmNPC
         c5Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id a14-20020a170902ecce00b0018712ccd6e0si1087782plh.2.2022.12.28.00.47.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Dec 2022 00:47:08 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500017.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NhlTx3DyRzmWts;
	Wed, 28 Dec 2022 16:45:41 +0800 (CST)
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Wed, 28 Dec 2022 16:46:52 +0800
Message-ID: <2002bec1-27af-5b4f-7bea-fca62506ca59@huawei.com>
Date: Wed, 28 Dec 2022 16:46:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 1/2] scsi:core:Add sysfs interface to control if skip lun
 with PQ=1
Content-Language: en-US
To: Mike Christie <michael.christie@oracle.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, "James E . J . Bottomley" <jejb@linux.ibm.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
References: <20221214070846.1808300-1-haowenchao@huawei.com>
 <20221214070846.1808300-2-haowenchao@huawei.com>
 <536981a8-76a3-54b9-a70c-a86994c027dd@oracle.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <536981a8-76a3-54b9-a70c-a86994c027dd@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggpeml500013.china.huawei.com (7.185.36.41) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as
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

On 2022/12/19 5:37, Mike Christie wrote:
> On 12/14/22 1:08 AM, Wenchao Hao wrote:
>>
>> When iSCSI initiator logged in target, the target attached none valid
>> lun but lun0. lun0 is not an valid disk, while it would response
>> inquiry command with PQ=1 and other general scsi commands like probe lun.
>> The others luns of target is added/removed dynamicly.
>>
>> We want the lun0 to be mapped to an sg device in initiator, so we can
>> probe luns of target based on lun0.
> 
> What do you want to do exactly? Is the idea with your patch we would create
> an sg device, then in userpsace you would do some scan related commands. If
> you find devices then you use sysfs to have scsi-ml scan/add a specific device
> like
> 
> echo 5 0 0 8 > host5/scan
> 
> ?
> 
> It's not really clear to me why you need the sg device, and can't just do?
> 
> echo - - - > .../hostN/scan
>
We do not directly echo - - - > .../hostN/scan. Instead, we use rescan-scsi-bus.sh
defined in sg3_utils to scan luns. If no sg device mapped to this host, the default
scan operations could not recognize luns.

We can simulate this with scsi_debug by following steps:

1. build scsi debug with following changes;

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index 8553277effb3..36dcdd2c3fe4 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -836,6 +836,7 @@ static int dif_errors;
 static bool sdeb_zbc_in_use;   /* true for host-aware and host-managed disks */
 static int sdeb_zbc_zone_cap_mb;
 static int sdeb_zbc_zone_size_mb;
+static int sdeb_pq_type;
 static int sdeb_zbc_max_open = DEF_ZBC_MAX_OPEN_ZONES;
 static int sdeb_zbc_nr_conv = DEF_ZBC_NR_CONV_ZONES;
 
@@ -1583,6 +1584,7 @@ static int resp_inquiry(struct scsi_cmnd *scp, struct sdebug_dev_info *devip)
        u32 alloc_len, n;
        int ret;
        bool have_wlun, is_disk, is_zbc, is_disk_zbc;
+       struct scsi_device *sdev = scp->device;
 
        alloc_len = get_unaligned_be16(cmd + 3);
        arr = kzalloc(SDEBUG_MAX_INQ_ARR_SZ, GFP_ATOMIC);
@@ -1598,7 +1600,11 @@ static int resp_inquiry(struct scsi_cmnd *scp, struct sdebug_dev_info *devip)
                pq_pdt = 0x7f;  /* not present, PQ=3, PDT=0x1f */
        else
                pq_pdt = (sdebug_ptype & 0x1f);
-       arr[0] = pq_pdt;
+       if (sdev->lun == 0) {
+               arr[0] = pq_pdt | (sdeb_pq_type << 5);
+       } else {
+               arr[0] = pq_pdt;
+       }
        if (0x2 & cmd[1]) {  /* CMDDT bit set */
                mk_sense_invalid_fld(scp, SDEB_IN_CDB, 1, 1);
                kfree(arr);
@@ -5883,6 +5889,7 @@ module_param_named(zone_cap_mb, sdeb_zbc_zone_cap_mb, int, S_IRUGO);
 module_param_named(zone_max_open, sdeb_zbc_max_open, int, S_IRUGO);
 module_param_named(zone_nr_conv, sdeb_zbc_nr_conv, int, S_IRUGO);
 module_param_named(zone_size_mb, sdeb_zbc_zone_size_mb, int, S_IRUGO);
+module_param_named(pq_type, sdeb_pq_type, int, S_IRUGO);
 
 MODULE_AUTHOR("Eric Youngdale + Douglas Gilbert");
 MODULE_DESCRIPTION("SCSI debug adapter driver");
@@ -7825,6 +7832,7 @@ static int sdebug_driver_probe(struct device *dev)
                error = -ENODEV;
                return error;
        }
+       //hpnt->no_skip_pq1 = 1;
        if (submit_queues > nr_cpu_ids) {
                pr_warn("%s: trim submit_queues (was %d) to nr_cpu_ids=%u\n",
                        my_name, submit_queues, nr_cpu_ids);

2. insmod scsi_debug with modparam max_luns=4 pq_type=1, we would get following scsi devices

# lsscsi -g
[0:0:0:1]    disk    Linux    scsi_debug       0191  /dev/sda   /dev/sg0 
[0:0:0:2]    disk    Linux    scsi_debug       0191  /dev/sdb   /dev/sg1 
[0:0:0:3]    disk    Linux    scsi_debug       0191  /dev/sdc   /dev/sg2 

3. remove the scsi_debug disks

echo 1 > /sys/block/sda/device/delete
echo 1 > /sys/block/sdb/device/delete
echo 1 > /sys/block/sdc/device/delete

4. scan with rescan-scsi-bus.sh would failed to discovery luns.

# rescan-scsi-bus.sh 
Scanning SCSI subsystem for new devices
Scanning host 0 for  SCSI target IDs 0 1 2 3 4 5 6 7, all LUNs
0 new or changed device(s) found.          
0 remapped or resized device(s) found.
0 device(s) removed.

Did not add the luns. If do not comment the line hpnt->no_skip_pq1 = 1 in
scsi_debug.c, the scan operations would found these luns succeed.

> ? Do you only want to add specific devices like you are doing some sort of
> LUN masking on the initiator side?
> 
> Is the issue that you need the sg device there, so you can detect when a device
> is no longer present on the target and then you will have userspace remove the
> device via the sysfs delete file?
> .

Yes, this is one scenarios. luns on the target are removed or added dynamically,
the only fixed one is LUN0 which response PQ=1.

If luns are removed from target after been added by initiator, we could know which
one should be removed from initiator via LUN0.

We can think LUN0 with PQ=1 is a dummy lun, which is fixed and can tell luns info on
the target.

According to the SPC, PQ=1 means the addressed logical unit having the
indicated device type is not accessible, it does not mean the addressed
logical unit is invalid. So I think we still can map this lun to an sg device.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2002bec1-27af-5b4f-7bea-fca62506ca59%40huawei.com.
