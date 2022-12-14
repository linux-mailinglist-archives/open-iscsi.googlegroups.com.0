Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBGXN4WOAMGQEWZWXDIA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id B24FB64C43F
	for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 08:09:17 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id mg21-20020a17090b371500b00219767e0175sf3413128pjb.1
        for <lists+open-iscsi@lfdr.de>; Tue, 13 Dec 2022 23:09:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671001756; cv=pass;
        d=google.com; s=arc-20160816;
        b=tgvDo7iwf68n7oZmU1yeIohOngqLIAij8eA6E9UZncZ5V+Q8d3ZAoijVi9Pt3Pyr95
         XyPKKSwYIgrLouhET577Qzmahn43c/nGxR/m7IgZsETWtMKSMrYCSfWy7zjhVi6l+iSu
         vCbFR6UpasqHQwxAa6mhd7tZ5oXQAaqvm34GPUqUbllB1eTaJhgoH09V6sERT4JERMEu
         nsUCv+L+vgKwx4VvaMrukmKhN7VnWW7Fo71/AVKrhhw8sjZBggQNkuLmzATyh0zHLXGU
         ZMj8kmXad1IKfF+isLUPRMixxtQy0iOpPbCqtVwmMhSR+zgruMWyyEcE90ZfP0WZLmS0
         udeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=WwPnvGvpXOMj8xNPSjwm//8XZyUxAYGjDgPirDwITpg=;
        b=BOl0w2fSqAjIKJLzmuStTNsp4CRGD9GxMmq+NsIKcv9pmViVsgYooCBPp3RDEO4ehr
         ELMnU3lJhSkI9lcwzmwG33ujcNLHGvbmOaRXhBcI4Lmamroi/JKJsDX/L/FRoptba5Bj
         LaG/fTxWrXrqiPoOvQWVLfVmmigpMO3V2DwAJydBp8SSAFZZumTLX3NgPK73Ldfv/O0/
         MhJcwuM0xEHgEvBzBT2pvKt3ybG/BNljMFerh9CxhqXmI0AkdWXwbyEnPuRXYCUf/9/a
         1wUYetaE2Oc29gGUysCn600rmcXZnFbsJkGpW3RzjQcTMtVGA8yHuFqlu9d7AHIFqYen
         qf5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WwPnvGvpXOMj8xNPSjwm//8XZyUxAYGjDgPirDwITpg=;
        b=nIvA1kKl6urDKe7sWOJ4MylIT5YvD/HWpw7RJDS8XxcphkIkCo6nqThz0SnlKteTXC
         IZRWpKRUzkPmzKaqvrdHtrJt0nD+yEgifQPlZtp8HVg9XGRDuf09PPS97rKnNC4fdXB4
         QZIPB91+MiwVGX4Q8s4Odvp44yh/dlN6cECBv3v+REdoRISErL0igyuFua0ueJzetr8q
         HyTJp+3BEm1ndge7PFPHyXD5POcIkcNaY4hgHs+NhAa0Dmw0x2ZVfjNMqt6p8+5ZzVMd
         O+KBlh28BD8bdUxLeWC7bFvJf+n/P2+VG5wF5QEc6yWbvF+eM+8tFAwPe4XKlgCWFF7j
         CmJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WwPnvGvpXOMj8xNPSjwm//8XZyUxAYGjDgPirDwITpg=;
        b=n2P7wk8fIt8TD15XUrEKKa0K8h64G97d40+TH9S3fvdFolkT3nuV0qe86jc8qzmTeR
         AkPo/q+1h3t0l7NgyRc4ESFCMkUxs4lnu8n2sPAJLjCimPiBQsEKhynm1d7dgdwKExmy
         /aAbioQ0D0khEyElUyGSzhWDfgvocr1JyudcthnmDaC/Ciu4p6E8e9ZGl2pQxWW2UjPr
         RMXyUxv97hAPxbAag9zgblZL4VmHYDFBZ/7bm5YnT+lGYcQhoI6PS9+qiT0kLU/jDjPo
         S6ahdSmHNbWNXxc3xx4sJ96hYYdtfI7BrJdrc+5dRpPqr5ahlvN8sb3LS2lp9HXdE7J7
         JP6g==
X-Gm-Message-State: AFqh2kqi3pW4hF4hFDu0FaLZ5ogHOThU9iADz6cIO2uJVx9LLaoLyvOy
	6e+csg6RtVqFLTyFrInM7Qw=
X-Google-Smtp-Source: AMrXdXtZxTJXEcWhrQl/RO+8R5SMv5jDF1ic9EpKcG9M0Rrtqz/ak5ke7O5/eRswCPCMqrr6/EOEnQ==
X-Received: by 2002:a17:90b:1d02:b0:213:df24:ed80 with SMTP id on2-20020a17090b1d0200b00213df24ed80mr224809pjb.186.1671001756350;
        Tue, 13 Dec 2022 23:09:16 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:6b4c:b0:17a:6fa:2290 with SMTP id
 g12-20020a1709026b4c00b0017a06fa2290ls21420447plt.3.-pod-prod-gmail; Tue, 13
 Dec 2022 23:09:14 -0800 (PST)
X-Received: by 2002:a17:903:1248:b0:189:129e:92af with SMTP id u8-20020a170903124800b00189129e92afmr30897711plh.14.1671001754284;
        Tue, 13 Dec 2022 23:09:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671001754; cv=none;
        d=google.com; s=arc-20160816;
        b=UwqHg8ot+4hQdASEzPhY5YQ4mkd0MNnD6JBO6cCArPE7QTTU45Xe9SZG752LJlC6ZG
         hZmafH338V5BWJ7KEfr2tylZt18Qc02AqcwN6Uu1pOZgaQYx4BoPIOvVPnRBsBFeq5Kp
         XZuW39DTAwjPEfEHz64YFOleDov2/j91WFp/gDF93K8j1yE5XmOTVQUYjDu3ENqttC/3
         Im3AmgnrDLN4Uq1WQwC1cSX5dMm7JxsZEVjfVlCfdZdw3DfcbEmnYlMwcMaLaa9LrNMP
         vEPXSKE+XUlkQ1G4fYDuHmQeiyyAwaDyXEIKw5NqeRYIIHnCnut8n8PSVKgCnV7EU8WG
         NFhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hirhkT9wN2ZvkmwzO81bHsfX0CCKQNgVHL0ZxDXJZ5U=;
        b=YWgtCKNKon9MRWya7YGVkTmOqau9xZbIA/xDR+nwYaRzk+3qvvhAlIL0g9IvJ+WVES
         KBfWVazKKF1HyXpBfNCBTDRq1vfHusjiMI2kLXDHk4ww7YmW5DOFdnPurS3JJ52E55Pf
         F0Jg2vUX4+L6e3e+oMsKXvkFKJEUyafIefUu/fGWiqs8/rGVMV6j7B6Mz0GOipL9cy7S
         cgXMqD6olRiDYKTNJro4+cmnjLPUso2gASrnQiwCvUvDq55IhtI+9KLc8xiHXGQm/twQ
         Xh0xrq7G1grMiFMOK83ehwbFoqI7vFp6RLvhPz/7lQCi36eXH+zNzpQfl0BZHx1NwLjY
         RR0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id d2-20020a170903230200b00174ea015ef2si202734plh.5.2022.12.13.23.09.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Dec 2022 23:09:14 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500017.china.huawei.com (unknown [172.30.72.54])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NX5zv6LrkzRpxP;
	Wed, 14 Dec 2022 15:08:11 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Wed, 14 Dec 2022 15:09:12 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "Martin K . Petersen" <martin.petersen@oracle.com>, Mike Christie
	<michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, Lee Duncan <lduncan@suse.com>, Chris Leech
	<cleech@redhat.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 1/2] scsi:core:Add sysfs interface to control if skip lun with PQ=1
Date: Wed, 14 Dec 2022 15:08:45 +0800
Message-ID: <20221214070846.1808300-2-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20221214070846.1808300-1-haowenchao@huawei.com>
References: <20221214070846.1808300-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
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

commit 948e922fc4461 ("scsi: core: map PQ=1, PDT=other values to
SCSI_SCAN_TARGET_PRESENT") returns SCSI_SCAN_TARGET_PRESENT if inquiry
returns PQ=1.

According to the SPC, PQ=1 means the addressed logical unit having the
indicated device type is not accessible, it does not mean the addressed
logical unit is invalid. We still can map this lun to an sg device.

In some conditions, we do not want to skip these devices, for example
with iSCSI:

When iSCSI initiator logged in target, the target attached none valid
lun but lun0. lun0 is not an valid disk, while it would response
inquiry command with PQ=1 and other general scsi commands like probe lun.
The others luns of target is added/removed dynamicly.

We want the lun0 to be mapped to an sg device in initiator, so we can
probe luns of target based on lun0.

I add an sysfs interface named no_skip_pq1 in each Scsi_Host to
control if to skip lun which return PQ=1 for inquiry.

The default behavior is not changed, which means we would still skip
add lun if inquiry returns PQ=1. We can set host's no_skip_pq1  in
specific drivers or via sysfs.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 drivers/scsi/scsi_scan.c  |  9 ++++++---
 drivers/scsi/scsi_sysfs.c | 29 +++++++++++++++++++++++++++++
 include/scsi/scsi_host.h  |  3 +++
 3 files changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index 920b145f80b7..bd4faaabee8c 100644
--- a/drivers/scsi/scsi_scan.c
+++ b/drivers/scsi/scsi_scan.c
@@ -1233,10 +1233,13 @@ static int scsi_probe_and_add_lun(struct scsi_target *starget,
 	 * that no LUN is present, so don't add sdev in these cases.
 	 * Two specific examples are:
 	 * 1) NetApp targets: return PQ=1, PDT=0x1f
-	 * 2) IBM/2145 targets: return PQ=1, PDT=0
-	 * 3) USB UFI: returns PDT=0x1f, with the PQ bits being "reserved"
+	 * 2) USB UFI: returns PDT=0x1f, with the PQ bits being "reserved"
 	 *    in the UFI 1.0 spec (we cannot rely on reserved bits).
 	 *
+	 * Targets set PQ=1 would be skipped if shost->no_skip_pq1 is not set
+	 * For example:
+	 * 1) IBM/2145 targets: return PQ=1, PDT=0
+	 *
 	 * References:
 	 * 1) SCSI SPC-3, pp. 145-146
 	 * PQ=1: "A peripheral device having the specified peripheral
@@ -1248,7 +1251,7 @@ static int scsi_probe_and_add_lun(struct scsi_target *starget,
 	 * PDT=00h Direct-access device (floppy)
 	 * PDT=1Fh none (no FDD connected to the requested logical unit)
 	 */
-	if (((result[0] >> 5) == 1 ||
+	if ((((result[0] >> 5) == 1 && !shost->no_skip_pq1) ||
 	    (starget->pdt_1f_for_no_lun && (result[0] & 0x1f) == 0x1f)) &&
 	    !scsi_is_wlun(lun)) {
 		SCSI_LOG_SCAN_BUS(3, sdev_printk(KERN_INFO, sdev,
diff --git a/drivers/scsi/scsi_sysfs.c b/drivers/scsi/scsi_sysfs.c
index f2a345cc0f8a..a72466c7e3c4 100644
--- a/drivers/scsi/scsi_sysfs.c
+++ b/drivers/scsi/scsi_sysfs.c
@@ -369,6 +369,34 @@ store_shost_eh_deadline(struct device *dev, struct device_attribute *attr,
 
 static DEVICE_ATTR(eh_deadline, S_IRUGO | S_IWUSR, show_shost_eh_deadline, store_shost_eh_deadline);
 
+static ssize_t
+show_no_skip_pq1(struct device *dev,
+		      struct device_attribute *attr, char *buf)
+{
+	struct Scsi_Host *shost = class_to_shost(dev);
+
+	return sysfs_emit(buf, "%s\n", shost->no_skip_pq1 ? "Y" : "N");
+}
+
+static ssize_t
+store_no_skip_pq1(struct device *dev, struct device_attribute *attr,
+		const char *buf, size_t count)
+{
+	struct Scsi_Host *shost = class_to_shost(dev);
+	int ret = -EINVAL;
+	bool store_val;
+
+	ret = kstrtobool(buf, &store_val);
+	if (ret)
+		return ret;
+
+	shost->no_skip_pq1 = store_val;
+
+	return count;
+}
+
+static DEVICE_ATTR(no_skip_pq1, S_IRUGO | S_IWUSR, show_no_skip_pq1, store_no_skip_pq1);
+
 shost_rd_attr(unique_id, "%u\n");
 shost_rd_attr(cmd_per_lun, "%hd\n");
 shost_rd_attr(can_queue, "%d\n");
@@ -421,6 +449,7 @@ static struct attribute *scsi_sysfs_shost_attrs[] = {
 	&dev_attr_host_reset.attr,
 	&dev_attr_eh_deadline.attr,
 	&dev_attr_nr_hw_queues.attr,
+	&dev_attr_no_skip_pq1.attr,
 	NULL
 };
 
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index 587cc767bb67..56bb11d9a886 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -659,6 +659,9 @@ struct Scsi_Host {
 	/* The transport requires the LUN bits NOT to be stored in CDB[1] */
 	unsigned no_scsi2_lun_in_cdb:1;
 
+	/* Do not skip adding lun if inquiry command returns PQ == 1 */
+	unsigned no_skip_pq1:1;
+
 	/*
 	 * Optional work queue to be utilized by the transport
 	 */
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221214070846.1808300-2-haowenchao%40huawei.com.
