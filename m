Return-Path: <open-iscsi+bncBAABBJ6DW2UAMGQEWHJWYLA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1ED7AB353
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:10 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id 5614622812f47-3ade1002692sf2949388b6e.1
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392169; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2vOFEgAPJxWFzD++gvgfR28ZwKup4ExeJgxM+XTUj2ptmCQbR9TLzUJxh7BDhJipZ
         bURrkyjglRVGtvAJGnkFgnxhz0TIGhD7Cdb8VHH+fmL6wlN8t5FqkQXxjw2KAruhVRT3
         SFeRw7xQ921mwRKvDLT5wRxiprHSWWZplVBxhTG1ULT0VQpQHme8d7gTK+/pQXJ95c8C
         X4iAezCEkhLG2oY4+XPrKcN0NUeG8/Ypg+NQGCfBr05s2jMZHTJYzSl0irXKIyElhoJP
         s50S/l8wVYEIjpY6yg6Q7ctPvWNEDwOgEBTSNxMqgCx5Xtg9LMc1/Pp4YqyhSAi4pz1o
         5F+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Lm+NwwbYRxTEBEUbtYqZX/OVmSHfc9gk07nnaVz81S0=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=QW3uIdChcNhFmYVTIht3lvCTz1BsL+TnNTLiJLnA/428CG8GnlInULIzFiC/8Q5uVW
         yFI2aAsJDRAW0cFgz+IphWMFz8nfO5h1pdLxmBGW+tD8EOWRUAOlhfRvWJCQjAFZP7ZF
         B8t3etx5Lmjly1vwZifB9utOLc0Jut/2bNr48rFc5CRZsFmWXbQHyQ5lsa/71k6Q/aXy
         jhYv8JXbo+Xp1WH9INP7FxvEfrOvpC84L67s5cmAjFBhsM3pKA6RJwzqE/IChadbufmW
         PvKqJ0+EA7L3OuVOHONfApUSrZCynTTasWaugfNWo11ilsn/WwwlZ27Q1Ec/ThOmazYl
         p4vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392169; x=1695996969; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Lm+NwwbYRxTEBEUbtYqZX/OVmSHfc9gk07nnaVz81S0=;
        b=D59Q/AaUQQXlcVTtl8TpzP9zA27xb9vKps7aGefGLAqtmKmHsUbS1hr8jx2aBUSs1O
         8N84KXqTDGUKDUkg23B9FhzNnYoCeK4IZZAD9rGbH7wJHFObWmKK38xiZWl2Am0LYWHM
         U+DupvKFwNKD0rY5cVKEaf/piA27C5Lf65gfnnKkbJvsh5vYdDIdvfwbdtV7lchrDLVo
         PD/2pbwgmRfm6BPyiV4PktbI2OmAyefM5J71HvTmH+efSEdve/5I3cGx4gncDGZATBGl
         UNKbo4cC5nfYU5a54ixnpnaFT/PkDUwAN9VpWxwgDq4usYqMEoBWdfsu9SMpvcZ8QzEL
         miPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392169; x=1695996969;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lm+NwwbYRxTEBEUbtYqZX/OVmSHfc9gk07nnaVz81S0=;
        b=mj2v3l/Rld7C05o3hCOAzKCR30vJR6CeF65RTHPLh42wfVPnHGVWtCHPlXxRfr66lJ
         Evjw96SwOAgl1qOOzU8q3S85c+rgJEFfe2xjbmHnJ8O21GMlt90h6d0sC3kisvv4iPC1
         GJqlGfNyYNenPBaOB2L7N8TWlVXGiZ8kdgRihVPZzQbH6q6UQR5jveK+1V8Fyyv7Rw3l
         zlrd7l98HLddv8Uq/knTCWoEp2xMMhEbAMQ39f4+jh7M4wrPgY6wQgDuKUGdd4Qjx6iS
         n1liaI1/dD8UmXUqXzbcYiUTzVkSyeUFNhKF36/W3hR1xZ0MvtlMrWukA3v1UeINTezx
         B8Yw==
X-Gm-Message-State: AOJu0YwrSxhz9Stk48ep0B8mM9cybeS/tlA8JkAmoPWot5lxQ1GMtTed
	kgWG9oKqvOVYgt09bAtY/vc=
X-Google-Smtp-Source: AGHT+IFE+WVXCoFPbN6E+XQIcYRdHMZ87COmwP2ntsreKhyJpQ3ZkeD3q/Wny+4h2gZ/iFqSRnzeSA==
X-Received: by 2002:a05:6870:b627:b0:1ba:d044:8a4 with SMTP id cm39-20020a056870b62700b001bad04408a4mr9329075oab.18.1695392169067;
        Fri, 22 Sep 2023 07:16:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:6393:b0:1c4:2b46:c079 with SMTP id
 t19-20020a056870639300b001c42b46c079ls748073oap.0.-pod-prod-09-us; Fri, 22
 Sep 2023 07:16:07 -0700 (PDT)
X-Received: by 2002:a05:6870:3a2e:b0:1d6:5b00:a011 with SMTP id du46-20020a0568703a2e00b001d65b00a011mr3267043oab.0.1695392167532;
        Fri, 22 Sep 2023 07:16:07 -0700 (PDT)
Received: by 2002:a05:620a:8ecc:b0:773:bc0c:3d88 with SMTP id af79cd13be357-7741801c10dms85a;
        Fri, 22 Sep 2023 02:29:37 -0700 (PDT)
X-Received: by 2002:a05:6102:2445:b0:452:6c9d:89e8 with SMTP id g5-20020a056102244500b004526c9d89e8mr8221221vss.21.1695374976943;
        Fri, 22 Sep 2023 02:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695374976; cv=none;
        d=google.com; s=arc-20160816;
        b=VN6FIIPdLBfJ4wICYmOUkl/LGzNoCfBxYNuePdpc0kbXVpLW+tprq8o7snlvDFDHu0
         9WVMOnbqqp7gISuXye3B8JDEw2l/0cu5sqNIHxdIM/+J9oUX18Wydri6IgtgjfJQ6yVh
         SeZFxMGexqblu2kcoL7/xNdSIYPdnxJ7F9McdjF8ckY9uBee2mHIN4xPgnwZKbZrP4ee
         LTRKYShbxNwv022VZ1Q/NynngNdZTs7+5Zei16eAkn9y2Qf4kdhlfr4VtTNVgokS69NZ
         BK1sF7qFVoJ9UcLCDW72diIqAfFUKk2D7E+GCrwrRKmWOPic7QFOSI1wTLBylQeAua73
         ZVmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=CN1Ce2Aykc1SfoBosffl60xiWXBLGPG11lsFbhjq0GA=;
        fh=efbNbptNhbD3foczTZf5UTdQGTI/0Ud9virqYphOI9o=;
        b=kjkeRPj3+35Ms5rkbLvgNsJ4nwtTZQXg/bdmt61NNd+2K8Z89G6+QESuI+3hf1oYXb
         FK7C04tkl37hU6kSk5zbkfkWjRbg+ct0QBzb4WwCQKg9MV5frcA4gGW3kkodehwaDh6/
         fi0D4Ernq/BsH9rpl0A2LcM1X24WQUWJh9lnG88ot7cNMxXVUWZjQugT9b5j6zPWMpv7
         PeMNB6ZT5BJO1KgSN37WGMjBJeYW9sC1gwhmzAEHOlbzbVnl67/wfTDhmX3Bs0fjY19O
         XW+pVZ1yvEApOO2bGtH45agWTJM4d148f9BGz8Z18aNehuUHUoXJWqEjz0XsNH4gNcIx
         KgxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id dc13-20020a056102558d00b0045258d13d6esi652794vsb.2.2023.09.22.02.29.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:29:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.54])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RsRhV1kxPzGpmW;
	Fri, 22 Sep 2023 17:25:46 +0800 (CST)
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
Subject: [PATCH v5 02/10] scsi: scsi_debug: Add interface to manage single device's error inject
Date: Fri, 22 Sep 2023 17:28:58 +0800
Message-ID: <20230922092906.2645265-3-haowenchao2@huawei.com>
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

This new facility uses the debugfs pseudo file system which is typically
mounted under the /sys/kernel/debug directory and requires root permissions
to access.

The interface file is found at /sys/kernel/debug/scsi_debug/<h:c:t:l>/error
where <h:c:t:l> identifies the device (logical unit (LU)) to inject errors
on.

For the following description the ${error} environment variable is assumed
to be set to/sys/kernel/debug/scsi_debug/1:0:0:0/error where 1:0:0:0 is a
pseudo device (LU) owned by the scsi_debug driver. Rules are written to
${error} in the normal sysfs fashion (e.g. 'echo "0 -2 0x12" > ${error}').

More than one rule can be active on a device at a time and inactive rules
(i.e. those whose Error count is 0) remain in the rule listing. The
existing rules can be read with 'cat ${error}' with one line output for
each rule.

The interface format is line-by-line, each line is an error injection rule.
Each rule contains integers separated by spaces, the first three columns
correspond to "Error code", "Error count" and "SCSI command", other
columns depend on Error code.

General rule format:
  +--------+------+-------------------------------------------------------+
  | Column | Type | Description                                           |
  +--------+------+-------------------------------------------------------+
  |   1    |  u8  | Error code                                            |
  |        |      |  0: timeout SCSI command                              |
  |        |      |  1: fail queuecommand, make queuecommand return       |
  |        |      |     given value                                       |
  |        |      |  2: fail command, finish command with SCSI status,    |
  |        |      |     sense key and ASC/ASCQ values                     |
  |        |      |  3: make abort commands for specific command fail     |
  |        |      |  4: make reset lun for specific command fail          |
  +--------+------+-------------------------------------------------------+
  |   2    |  s32 | Error count                                           |
  |        |      |  0: this rule will be ignored                         |
  |        |      |  positive: the rule will always take effect           |
  |        |      |  negative: the rule takes effect n times where -n is  |
  |        |      |            the value given. Ignored after n times     |
  +--------+------+-------------------------------------------------------+
  |   3    |  x8  | SCSI command opcode, 0xff for all commands            |
  +--------+------+-------------------------------------------------------+
  |  ...   |  xxx | Error type specific fields                            |
  +--------+------+-------------------------------------------------------+
Notes:
- when multiple error inject rules are added for the same SCSI command, the
  one with smaller error code will take effect (and the others will be
  ignored).
- if an same error (i.e. same Error code and SCSI command) is added, the
  older one will be overwritten.
- Currently, the basic types are (u8/u16/u32/u64/s8/s16/s32/s64) and the
  hexadecimal types (x8/x16/x32/x64)
- where a hexadecimal value is expected (e.g. Column 3: SCSI command
  opcode) the "0x" prefix is optional on the value (e.g. the INQUIRY opcode
  can be given as '0x12' or '12')
- when the Error count is negative, reading ${error} will show that value
  incrementing, stopping when it gets to 0

Acked-by: Douglas Gilbert <dgilbert@interlog.com>
Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
---
 drivers/scsi/scsi_debug.c | 206 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 202 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index 35c336271b13..ca1e2f4878bc 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -286,6 +286,42 @@ struct sdeb_zone_state {	/* ZBC: per zone state */
 	sector_t z_wp;
 };
 
+enum sdebug_err_type {
+	ERR_TMOUT_CMD		= 0,	/* make specific scsi command timeout */
+	ERR_FAIL_QUEUE_CMD	= 1,	/* make specific scsi command's */
+					/* queuecmd return failed */
+	ERR_FAIL_CMD		= 2,	/* make specific scsi command's */
+					/* queuecmd return succeed but */
+					/* with errors set in scsi_cmnd */
+};
+
+struct sdebug_err_inject {
+	int type;
+	struct list_head list;
+	int cnt;
+	unsigned char cmd;
+	struct rcu_head rcu;
+
+	union {
+		/*
+		 * For ERR_FAIL_QUEUE_CMD
+		 */
+		int queuecmd_ret;
+
+		/*
+		 * For ERR_FAIL_CMD
+		 */
+		struct {
+			unsigned char host_byte;
+			unsigned char driver_byte;
+			unsigned char status_byte;
+			unsigned char sense_key;
+			unsigned char asc;
+			unsigned char asq;
+		};
+	};
+};
+
 struct sdebug_dev_info {
 	struct list_head dev_list;
 	unsigned int channel;
@@ -311,6 +347,10 @@ struct sdebug_dev_info {
 	unsigned int max_open;
 	ktime_t create_ts;	/* time since bootup that this device was created */
 	struct sdeb_zone_state *zstate;
+
+	struct dentry *debugfs_entry;
+	struct spinlock list_lock;
+	struct list_head inject_err_list;
 };
 
 struct sdebug_host_info {
@@ -865,6 +905,143 @@ static const int condition_met_result = SAM_STAT_CONDITION_MET;
 
 static struct dentry *sdebug_debugfs_root;
 
+static void sdebug_err_free(struct rcu_head *head)
+{
+	struct sdebug_err_inject *inject =
+		container_of(head, typeof(*inject), rcu);
+
+	kfree(inject);
+}
+
+static void sdebug_err_add(struct scsi_device *sdev, struct sdebug_err_inject *new)
+{
+	struct sdebug_dev_info *devip = (struct sdebug_dev_info *)sdev->hostdata;
+	struct sdebug_err_inject *err;
+
+	spin_lock(&devip->list_lock);
+	list_for_each_entry_rcu(err, &devip->inject_err_list, list) {
+		if (err->type == new->type && err->cmd == new->cmd) {
+			list_del_rcu(&err->list);
+			call_rcu(&err->rcu, sdebug_err_free);
+		}
+	}
+
+	list_add_tail_rcu(&new->list, &devip->inject_err_list);
+	spin_unlock(&devip->list_lock);
+}
+
+static int sdebug_error_show(struct seq_file *m, void *p)
+{
+	struct scsi_device *sdev = (struct scsi_device *)m->private;
+	struct sdebug_dev_info *devip = (struct sdebug_dev_info *)sdev->hostdata;
+	struct sdebug_err_inject *err;
+
+	seq_puts(m, "Type\tCount\tCommand\n");
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(err, &devip->inject_err_list, list) {
+		switch (err->type) {
+		case ERR_TMOUT_CMD:
+			seq_printf(m, "%d\t%d\t0x%x\n", err->type, err->cnt,
+				err->cmd);
+		break;
+
+		case ERR_FAIL_QUEUE_CMD:
+			seq_printf(m, "%d\t%d\t0x%x\t0x%x\n", err->type,
+				err->cnt, err->cmd, err->queuecmd_ret);
+		break;
+
+		case ERR_FAIL_CMD:
+			seq_printf(m, "%d\t%d\t0x%x\t0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\n",
+				err->type, err->cnt, err->cmd,
+				err->host_byte, err->driver_byte,
+				err->status_byte, err->sense_key,
+				err->asc, err->asq);
+		break;
+		}
+	}
+	rcu_read_unlock();
+
+	return 0;
+}
+
+static int sdebug_error_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, sdebug_error_show, inode->i_private);
+}
+
+static ssize_t sdebug_error_write(struct file *file, const char __user *ubuf,
+		size_t count, loff_t *ppos)
+{
+	char *buf;
+	unsigned int inject_type;
+	struct sdebug_err_inject *inject;
+	struct scsi_device *sdev = (struct scsi_device *)file->f_inode->i_private;
+
+	buf = kmalloc(count, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	if (copy_from_user(buf, ubuf, count)) {
+		kfree(buf);
+		return -EFAULT;
+	}
+
+	if (sscanf(buf, "%d", &inject_type) != 1) {
+		kfree(buf);
+		return -EINVAL;
+	}
+
+	inject = kzalloc(sizeof(struct sdebug_err_inject), GFP_KERNEL);
+	if (!inject) {
+		kfree(buf);
+		return -ENOMEM;
+	}
+
+	switch (inject_type) {
+	case ERR_TMOUT_CMD:
+		if (sscanf(buf, "%d %d %hhx", &inject->type, &inject->cnt,
+			   &inject->cmd) != 3)
+			goto out_error;
+	break;
+
+	case ERR_FAIL_QUEUE_CMD:
+		if (sscanf(buf, "%d %d %hhx %x", &inject->type, &inject->cnt,
+			   &inject->cmd, &inject->queuecmd_ret) != 4)
+			goto out_error;
+	break;
+
+	case ERR_FAIL_CMD:
+		if (sscanf(buf, "%d %d %hhx %hhx %hhx %hhx %hhx %hhx %hhx",
+			   &inject->type, &inject->cnt, &inject->cmd,
+			   &inject->host_byte, &inject->driver_byte,
+			   &inject->status_byte, &inject->sense_key,
+			   &inject->asc, &inject->asq) != 9)
+			goto out_error;
+	break;
+
+	default:
+		goto out_error;
+	break;
+	}
+
+	kfree(buf);
+	sdebug_err_add(sdev, inject);
+
+	return count;
+
+out_error:
+	kfree(buf);
+	kfree(inject);
+	return -EINVAL;
+}
+
+static const struct file_operations sdebug_error_fops = {
+	.open	= sdebug_error_open,
+	.read	= seq_read,
+	.write	= sdebug_error_write,
+	.release = single_release,
+};
 
 /* Only do the extra work involved in logical block provisioning if one or
  * more of the lbpu, lbpws or lbpws10 parameters are given and we are doing
@@ -5099,6 +5276,8 @@ static struct sdebug_dev_info *sdebug_device_create(
 		}
 		devip->create_ts = ktime_get_boottime();
 		atomic_set(&devip->stopped, (sdeb_tur_ms_to_ready > 0 ? 2 : 0));
+		spin_lock_init(&devip->list_lock);
+		INIT_LIST_HEAD(&devip->inject_err_list);
 		list_add_tail(&devip->dev_list, &sdbg_host->dev_info_list);
 	}
 	return devip;
@@ -5144,6 +5323,7 @@ static int scsi_debug_slave_alloc(struct scsi_device *sdp)
 	if (sdebug_verbose)
 		pr_info("slave_alloc <%u %u %u %llu>\n",
 		       sdp->host->host_no, sdp->channel, sdp->id, sdp->lun);
+
 	return 0;
 }
 
@@ -5166,6 +5346,12 @@ static int scsi_debug_slave_configure(struct scsi_device *sdp)
 	if (sdebug_no_uld)
 		sdp->no_uld_attach = 1;
 	config_cdb_len(sdp);
+
+	devip->debugfs_entry = debugfs_create_dir(dev_name(&sdp->sdev_dev),
+				sdebug_debugfs_root);
+	debugfs_create_file("error", 0600, devip->debugfs_entry, sdp,
+				&sdebug_error_fops);
+
 	return 0;
 }
 
@@ -5173,15 +5359,27 @@ static void scsi_debug_slave_destroy(struct scsi_device *sdp)
 {
 	struct sdebug_dev_info *devip =
 		(struct sdebug_dev_info *)sdp->hostdata;
+	struct sdebug_err_inject *err;
 
 	if (sdebug_verbose)
 		pr_info("slave_destroy <%u %u %u %llu>\n",
 		       sdp->host->host_no, sdp->channel, sdp->id, sdp->lun);
-	if (devip) {
-		/* make this slot available for re-use */
-		devip->used = false;
-		sdp->hostdata = NULL;
+
+	if (!devip)
+		return;
+
+	spin_lock(&devip->list_lock);
+	list_for_each_entry_rcu(err, &devip->inject_err_list, list) {
+		list_del_rcu(&err->list);
+		call_rcu(&err->rcu, sdebug_err_free);
 	}
+	spin_unlock(&devip->list_lock);
+
+	debugfs_remove(devip->debugfs_entry);
+
+	/* make this slot available for re-use */
+	devip->used = false;
+	sdp->hostdata = NULL;
 }
 
 /* Returns true if we require the queued memory to be freed by the caller. */
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922092906.2645265-3-haowenchao2%40huawei.com.
