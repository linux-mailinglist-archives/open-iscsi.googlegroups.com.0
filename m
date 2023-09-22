Return-Path: <open-iscsi+bncBAABBMGDW2UAMGQEUWOQ6AQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3f.google.com (mail-oa1-x3f.google.com [IPv6:2001:4860:4864:20::3f])
	by mail.lfdr.de (Postfix) with ESMTPS id CECE37AB35B
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:18 +0200 (CEST)
Received: by mail-oa1-x3f.google.com with SMTP id 586e51a60fabf-1b0812d43a0sf4006306fac.0
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392177; cv=pass;
        d=google.com; s=arc-20160816;
        b=RCTdbpwswQhyRRY037ciBzcTs32AniO9Tov+5tpRTY51e7euGD7HuEOyPS5qFtcTLC
         6BolriDKs36KweStrodmnJ6Jpn1DubPpLI6pNKK7Xzv5jxVjJZq4n/5KqXDgRGxDATnu
         cfdwJjGHs5RKrxPMr1UTGsPJHC9gHUafXSmVgVb87mF80IExl4rFRtjS5D9MD/q2n2L4
         PbPC0N2itjPWO5ZctVLUUWQUmxijqjPdMdNrPyzTFUAJNkYzGPe5toLBiyjeQ0tkV+sc
         waRLRocxlUKeLrgthAlv5/IIS5nlwpgwyoFWtirx77bbDYGZ5kMA4WwnhmJi5x1ySMR1
         T2OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=/jXKPzsKnErA443ssPH0LUlgHMlhVdkyuiYw3fChp3Q=;
        fh=GwYJfPc0PN6Y25n/Z05Xv6C2ezOZp0rynWYe6KQQWug=;
        b=dqxiWwHwWylN65A/SlE8nQ3j7rT7/NVkp93EQFjUSl+ozlsaOyvXLCgU0+hnkt/rXF
         i7OBftVRV4of/xWL1BTFiBg89qYBfcHh1/5h7+68kvGIv2qZ3s+iW5Mapo0tPXlQX9WO
         ysWUcMzu8oVuQun8b07SH5MUX0240+qcZrE0Td6XmgmiiX2VgDil5EGILN9ZUzYjD+Eb
         7KClqK5HR5LhugtkIRrkRP3csC6Mn6QUJkEqm/pcOfcAYRjhRp/ab/t8fjTCavQT7IrZ
         JTv54Jcq4bTwBiBBvuPSXfvIIB4X+ikvlaxw0dsRyKnRBGGuVzuIv/k8S+BkanIadsRy
         d8Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392177; x=1695996977; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/jXKPzsKnErA443ssPH0LUlgHMlhVdkyuiYw3fChp3Q=;
        b=NRXVTROqwP/Tpxx4W1Rvvdy9DX9pRCLXSE6QkMyVV35KZG6F2MAcOOU0JZAWMzUEcb
         Lp0Xb41TS/mn4CtwHz2fE4niBM/Z0JBlUeh6wxe2uUjN5aVpaj5hdDYHA7cwDPjk8pff
         N9Hytyvjxpd+wxZxptpvBi76TKwAZrkoP/CfhdMfFxSvPV+qn919sh0zcuzrZxzdlBcq
         xLS+x8fX9ICdBbUThVhIUaOoI+0t8T/pRZqROUJgST4pfIz0yuooj/fTyQAewrcieihQ
         k5IDiZLbx0A9O3/gweMsc5qSPRyev3uFswx9vS5oaYbOC3ffNBHMdSrxawCLzm6T+m/H
         LyIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392177; x=1695996977;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/jXKPzsKnErA443ssPH0LUlgHMlhVdkyuiYw3fChp3Q=;
        b=mlVQKFDu1bOTxQ0EePuMlXQuMPYNENdNF9JaafIc63XGEgkFLf4Y6xhTV2ymPyNXsv
         3S+o6Cuq7llRg2sSt04aGVxoklscJSle3/o8cljoj0JuQ00r68wLrlLc9gFSXVzEZHiq
         KBhmfPYU/S/hBKqG+fmc7FKHOZkz+ZGEeH70aqiWdOhowbhmdEWnIGycgxRJL8bebhuO
         Jbnwskl5gizK6DeNSMyNFWb8nbbO0+iAKrRd+UsAvD6Yr0/cg1AECsOGYRWkCuv/AQGW
         grZ1G8AFZjeXQRxcuBwcYzGVPDaKVHrNJOwGY/2M9VYDsi2J9+t37f3Kwa5haaUUFKAR
         zJyg==
X-Gm-Message-State: AOJu0YwGF0orh7mRo164bXiFnTbv5ishrRHM8OxbUDlMixAJSyCB6mtI
	Yg7VFs/3pRZOtUCPjB5q914=
X-Google-Smtp-Source: AGHT+IFUW1CrRmEoM7mPWwG6CHNmtLfGuW084o8hRbt8cf2km7jiIaZ6C5qjX1AROrcJeJgJuZywOw==
X-Received: by 2002:a05:6870:9f16:b0:1ba:bef6:9d80 with SMTP id xl22-20020a0568709f1600b001babef69d80mr1633805oab.4.1695392177380;
        Fri, 22 Sep 2023 07:16:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:6588:b0:1d6:cbc7:fb4e with SMTP id
 fp8-20020a056870658800b001d6cbc7fb4els1450969oab.0.-pod-prod-04-us; Fri, 22
 Sep 2023 07:16:16 -0700 (PDT)
X-Received: by 2002:a05:6870:3a32:b0:1cc:a8f0:2ee8 with SMTP id du50-20020a0568703a3200b001cca8f02ee8mr3654090oab.2.1695392176149;
        Fri, 22 Sep 2023 07:16:16 -0700 (PDT)
Received: by 2002:a05:6808:8d8:b0:3a8:7c7d:6d23 with SMTP id 5614622812f47-3adee791c3emsb6e;
        Fri, 22 Sep 2023 02:29:41 -0700 (PDT)
X-Received: by 2002:a05:6808:4d3:b0:3a4:8ecb:185c with SMTP id a19-20020a05680804d300b003a48ecb185cmr1040524oie.22.1695374980935;
        Fri, 22 Sep 2023 02:29:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695374980; cv=none;
        d=google.com; s=arc-20160816;
        b=CDcVpQSPTLklUbHnxXUNq5IWGk4Jc25k9nOgctBOkW4LdJT8Y67RW4U9NkzvsiA7Y1
         LVk9LYGNjBZLF1vAOJyx34LPSYev0Bu3Y8oT2Y/rFEVSGvpPj+lgURwLPAwfK3YSqpCB
         73LkbrCmG1Qs8ha/xYr7OcDrh3Vaj/q8fDLzPHDv3YLw4KY9eVbeyqRWlUXkRwL1agPX
         SkjR+jRY+WrsbHwgvplYKXe6oH1hPY+hTNy59kJ4QZvTMMxZWCkT3gRBVENfSVOzyPSk
         1b6n9Mi0IEkWAwtrCJBnXwYocAFaWBWLdV6wTdXj/T/551aTantmoUPqeJQfUYKAKYxb
         CkAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=83SzQTYZPZFOxc16XLX5ca29nZtg323jkCN5DHKS37A=;
        fh=GwYJfPc0PN6Y25n/Z05Xv6C2ezOZp0rynWYe6KQQWug=;
        b=xMEKDzyb4bJA5Qal8MehtQZ8Siy4OQN5B3V12CSh+tSbMWpBhqfIQ58l4Y42KE0l8T
         awUOadWqZEP2GWsR5MSDxmsy/nSXgD7aBKrO4DN5bTiESAACi8cRMfY0ZM53qt29/5Hz
         QSMukfASFQzS7yIHlJ87nDCUoYY2x/P3uUVaIaDVe1Ft+5Z/3d63UoMDrpctG22ZgYns
         T9p4F+RW2ZfF5LwaZQP5DjdWG4U8XCJJANz3NJjFvDnFMdXIAKEYt5EeaU6wYZVfwJDj
         ETDJYT75HeG2X2x/BddQoojsM3tk44xhQhB9Orn9HUKC0XpWc7o8JnJeV7shRQaYCIlu
         XPrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id bo9-20020a056808228900b003adb3013457si285886oib.0.2023.09.22.02.29.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:29:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RsRjT3Pd8zVl5J;
	Fri, 22 Sep 2023 17:26:37 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:29:37 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Douglas Gilbert <dgilbert@interlog.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>, kernel test robot <oliver.sang@intel.com>
Subject: [PATCH v5 09/10] scsi: scsi_debug: Add debugfs interface to fail target reset
Date: Fri, 22 Sep 2023 17:29:05 +0800
Message-ID: <20230922092906.2645265-10-haowenchao2@huawei.com>
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
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as
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

The interface is found at
/sys/kernel/debug/scsi_debug/target<h:c:t>/fail_reset where <h:c:t>
identifies the target to inject errors on. It's a simple bool type
interface which would make this target's reset fail if set to 'Y'.

Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
Reported-by: kernel test robot <oliver.sang@intel.com>
---
 drivers/scsi/scsi_debug.c | 106 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 105 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index db8ab6cad078..ab4a6f7de1ef 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -42,6 +42,7 @@
 #include <linux/xarray.h>
 #include <linux/prefetch.h>
 #include <linux/debugfs.h>
+#include <linux/async.h>
 
 #include <net/checksum.h>
 
@@ -357,6 +358,11 @@ struct sdebug_dev_info {
 	struct list_head inject_err_list;
 };
 
+struct sdebug_target_info {
+	bool reset_fail;
+	struct dentry *debugfs_entry;
+};
+
 struct sdebug_host_info {
 	struct list_head host_list;
 	int si_idx;	/* sdeb_store_info (per host) xarray index */
@@ -1082,6 +1088,83 @@ static const struct file_operations sdebug_error_fops = {
 	.release = single_release,
 };
 
+static int sdebug_target_reset_fail_show(struct seq_file *m, void *p)
+{
+	struct scsi_target *starget = (struct scsi_target *)m->private;
+	struct sdebug_target_info *targetip =
+		(struct sdebug_target_info *)starget->hostdata;
+
+	if (targetip)
+		seq_printf(m, "%c\n", targetip->reset_fail ? 'Y' : 'N');
+
+	return 0;
+}
+
+static int sdebug_target_reset_fail_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, sdebug_target_reset_fail_show, inode->i_private);
+}
+
+static ssize_t sdebug_target_reset_fail_write(struct file *file,
+		const char __user *ubuf, size_t count, loff_t *ppos)
+{
+	int ret;
+	struct scsi_target *starget =
+		(struct scsi_target *)file->f_inode->i_private;
+	struct sdebug_target_info *targetip =
+		(struct sdebug_target_info *)starget->hostdata;
+
+	if (targetip) {
+		ret = kstrtobool_from_user(ubuf, count, &targetip->reset_fail);
+		return ret < 0 ? ret : count;
+	}
+	return -ENODEV;
+}
+
+static const struct file_operations sdebug_target_reset_fail_fops = {
+	.open	= sdebug_target_reset_fail_open,
+	.read	= seq_read,
+	.write	= sdebug_target_reset_fail_write,
+	.release = single_release,
+};
+
+static int sdebug_target_alloc(struct scsi_target *starget)
+{
+	struct sdebug_target_info *targetip;
+
+	targetip = kzalloc(sizeof(struct sdebug_target_info), GFP_KERNEL);
+	if (!targetip)
+		return -ENOMEM;
+
+	targetip->debugfs_entry = debugfs_create_dir(dev_name(&starget->dev),
+				sdebug_debugfs_root);
+	debugfs_create_file("fail_reset", 0600, targetip->debugfs_entry, starget,
+				&sdebug_target_reset_fail_fops);
+
+	starget->hostdata = targetip;
+
+	return 0;
+}
+
+static void sdebug_tartget_cleanup_async(void *data, async_cookie_t cookie)
+{
+	struct sdebug_target_info *targetip = data;
+
+	debugfs_remove(targetip->debugfs_entry);
+	kfree(targetip);
+}
+
+static void sdebug_target_destroy(struct scsi_target *starget)
+{
+	struct sdebug_target_info *targetip;
+
+	targetip = (struct sdebug_target_info *)starget->hostdata;
+	if (targetip) {
+		starget->hostdata = NULL;
+		async_schedule(sdebug_tartget_cleanup_async, targetip);
+	}
+}
+
 /* Only do the extra work involved in logical block provisioning if one or
  * more of the lbpu, lbpws or lbpws10 parameters are given and we are doing
  * real reads and writes (i.e. not skipping them for speed).
@@ -5634,11 +5717,25 @@ static int scsi_debug_device_reset(struct scsi_cmnd *SCpnt)
 	return SUCCESS;
 }
 
+static int sdebug_fail_target_reset(struct scsi_cmnd *cmnd)
+{
+	struct scsi_target *starget = scsi_target(cmnd->device);
+	struct sdebug_target_info *targetip =
+		(struct sdebug_target_info *)starget->hostdata;
+
+	if (targetip)
+		return targetip->reset_fail;
+
+	return 0;
+}
+
 static int scsi_debug_target_reset(struct scsi_cmnd *SCpnt)
 {
 	struct scsi_device *sdp = SCpnt->device;
 	struct sdebug_host_info *sdbg_host = shost_to_sdebug_host(sdp->host);
 	struct sdebug_dev_info *devip;
+	u8 *cmd = SCpnt->cmnd;
+	u8 opcode = cmd[0];
 	int k = 0;
 
 	++num_target_resets;
@@ -5656,6 +5753,12 @@ static int scsi_debug_target_reset(struct scsi_cmnd *SCpnt)
 		sdev_printk(KERN_INFO, sdp,
 			    "%s: %d device(s) found in target\n", __func__, k);
 
+	if (sdebug_fail_target_reset(SCpnt)) {
+		scmd_printk(KERN_INFO, SCpnt, "fail target reset 0x%x\n",
+			    opcode);
+		return FAILED;
+	}
+
 	return SUCCESS;
 }
 
@@ -8109,7 +8212,6 @@ static int sdebug_init_cmd_priv(struct Scsi_Host *shost, struct scsi_cmnd *cmd)
 	return 0;
 }
 
-
 static struct scsi_host_template sdebug_driver_template = {
 	.show_info =		scsi_debug_show_info,
 	.write_info =		scsi_debug_write_info,
@@ -8139,6 +8241,8 @@ static struct scsi_host_template sdebug_driver_template = {
 	.track_queue_depth =	1,
 	.cmd_size = sizeof(struct sdebug_scsi_cmd),
 	.init_cmd_priv = sdebug_init_cmd_priv,
+	.target_alloc =		sdebug_target_alloc,
+	.target_destroy =	sdebug_target_destroy,
 };
 
 static int sdebug_driver_probe(struct device *dev)
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-10-haowenchao2%40huawei.com.
