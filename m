Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB7MJ6KNQMGQEVYDGLQY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D99DD6336D0
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 09:14:56 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id t5-20020a5b07c5000000b006dfa2102debsf13072186ybq.4
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 00:14:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669104895; cv=pass;
        d=google.com; s=arc-20160816;
        b=laas9crwyYzuVjbLf1GvwWIPQtnUFbhhKoAZIDYxt6iZamTU+l2G0Rf8ZPDJyH9clG
         Nm9lUvgMrHjc3NHQnY9YHn0TvURq8EZdISHU3yZrha1VZEs+uF8gqZYvE1Lhjz35f+Ax
         hciotQo+9h2S6WGOHUbirVkl26awOgLKuo3LAwN+YKO/ZNbymAi/a5dmvCpHlc0L2SDm
         paONlqqUYc+N9gCANYaY2klJRPXFqo8MNqsg7vabfur2tpyHpdMKjPTi+edBk9fUpzZB
         LPvOBTP7FeIbAfUkRV27Ci3DnbTRPuFy81DCncOsH0hJa0sfe0+jH/VJfSbwtfrDNx3U
         DLPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=OX/bxvPDnqUh7YgvxDy1S4XYUvUPYHDrzf5X2vRJQX8=;
        b=duEKIi+Ux4Qgl+Ml6mpTJWObyifDtXqfntT47ebKeU/4UfgfHprLa/RAxJKPL8R5x2
         TMUVZH9MvLhFYnBgwPgsLeX0Om2R+Wlo2lz/D+W4zOF9ZMDqzlOb5o9jUn04GUWrQgt+
         SwqsV443F6D+9NCIfeQp63aSFg7bBiZBzoY/fLhTtFpcVcatxyNFkLo4X4/ttLNnrB+M
         ItVuJbz5/LkwUjzP/1hJreIpkus8sy5AoGgY1GEnyYwexqC+6AKczaNOJEk3hUdIoMQA
         U89WT/QEwa3gWM2PU8ZaqO8ka2rrJXJHkOK88GdmSs94hXcPteVlU3UH3QoRj8v45Mil
         dsTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OX/bxvPDnqUh7YgvxDy1S4XYUvUPYHDrzf5X2vRJQX8=;
        b=HiDFLD6NKmtYi1VqbnnObSzukXPbAFpCoAhp4nOEBTeplOBhvZkuWOgcHFKq7ZO9lz
         of4Rsp6k4AmIXsI49WYkIi47K/3ffWk6udxT6/Dae3EgvdQ7K78AfpP4f57C0ZXLAj7D
         sFRQK1iptgr03tPRNXkm0n2ptPi8sN4N/TIxmZORidd15MMEww4DvUPFkRJoGDsgWiPu
         o1q3pze+zKYwclTg6k0ZoZD4HwGtrbngFDVh572q3SrYIdSWPPPZCAc71SqgeHcNib/7
         HjuPWIhxoVTbv+mEdVbRWdPtog3JKT48KSHy8aWjZM+5ci/2jNui4B29/pp6Mdk45dSY
         ilZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OX/bxvPDnqUh7YgvxDy1S4XYUvUPYHDrzf5X2vRJQX8=;
        b=Eomeh5rfQHLBqiaLaQN8hjdiaWEFYWH4eU7czZgle/jCesykkOsgOxKExW18XqFyd+
         3ZxdMcdXka91tFZ8+RxSbZp49LTqFDy2P44DPAgmrZPtwOTZdWdaRCrwdLDkU6wFnCra
         l/UpeiFPSb3HNdUHupI0PlrFPuIBSALMGtOrNGYG0xKM88QOK3EW6WQEtlmhZ/gOp6L0
         +igNOIt5S4ls/T0vbo+HFKPT0BKeZGhxa4daWcRpHc5pH/5TcS/KDP2A4H+r1VdOIYs2
         beQ3rJHiuy/nqna5+winGVxMCeBAaD+7d03+eMwCzkErQXPUXpC3rFs11FfQ8DCXj0O+
         AI7Q==
X-Gm-Message-State: ANoB5pnHtbYCh/qfZW5RlDmU+laYZG68pFr4wL9MJ3be8PdBd18rVp22
	n4A4Dsu2XG3zVZyh8NyWIIU=
X-Google-Smtp-Source: AA0mqf7OltMVlPcAWN0CzfUejdewnz/1ye0WRa8Z6wOZlXLpg9u25m8gWkI6XTkIJYBTH61n0aLpOw==
X-Received: by 2002:a25:dc05:0:b0:6e6:a4d5:1251 with SMTP id y5-20020a25dc05000000b006e6a4d51251mr2726335ybe.9.1669104895304;
        Tue, 22 Nov 2022 00:14:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:690c:39d:b0:393:f144:5d4d with SMTP id
 bh29-20020a05690c039d00b00393f1445d4dls5491356ywb.5.-pod-prod-gmail; Tue, 22
 Nov 2022 00:14:53 -0800 (PST)
X-Received: by 2002:a0d:e5c2:0:b0:35f:a7b5:423f with SMTP id o185-20020a0de5c2000000b0035fa7b5423fmr9724498ywe.68.1669104893372;
        Tue, 22 Nov 2022 00:14:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669104893; cv=none;
        d=google.com; s=arc-20160816;
        b=KZfuk84JqT5/VzOcpIUOv1kOQt3EF6YR+7z7gZanotZP+F8fWAViG20HKKi/G2IDLY
         FQzSC4a4V+rW6LhUbuB+7bucBQE+Bk2SVWgUwnGmYtd9GYBhjCVcnca20NBeumLDslgS
         aWC/PSShsDoirkjpjEwvMWXkFrEIIEMkTKCxXUVEPJDOZcNeF+xTSBLqERhwB7M2wxCh
         PpLWngmojgOa2bl9cVEYsNhy5W+Sg4j9eQ0joZc2vJHNuaXT7FtwD7hQrbfCaUBchYSs
         yk6P4hE/z9BSGebopBq4OV1+0sxvPzEBwbo2ZCVMjKvWWmqkmGi3lCLk95CUcxDcdN9X
         gqFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=3o1TL1LKeenWyw70yWqkgUiAF1+9HyrFU5rsZ8McWzk=;
        b=RKa/i3G2YtQQV0wtWWsAwJfgJWIMLI7b0tjOw9cWHBJyv8faqQDmXRIHC+DXIeM4bQ
         Wt5EQBNgPObC4SPMv6JNqc6VDg6DZ5NHiKiPQ0cqqlKF5O5LWLWAnbYls71FLaZ3KXwe
         8HEdT02mFjyzBnzr1438tFhVhDdBy1SHd+2SmN+LSLyIX/QEbrSd6VXsyuMpEYVP8pmB
         occgfScx4nt2NVMzGqs9HqJw2Z9V9OfpMToHQY03OsdrvYZe2RA4QaZDOfndsaD+M3vd
         iPXV1WP/l/f5WZn7deDy7q+MTPdSYIiuLTu0sJlOojNp5yhJ55z19kkqSyjbx1oyFLf8
         ozLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id f134-20020a25cf8c000000b006cfe797b938si964782ybg.2.2022.11.22.00.14.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Nov 2022 00:14:53 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.54])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4NGcVP5Kjbz15Mqx;
	Tue, 22 Nov 2022 16:14:21 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 16:14:51 +0800
Received: from build.huawei.com (10.175.101.6) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 16:14:50 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Mike
 Christie" <michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH] scsi:iscsi: Record session's startup mode in kernel
Date: Tue, 22 Nov 2022 21:30:41 +0000
Message-ID: <20221122213040.4128105-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as
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

There are 3 iscsi session's startup mode which are onboot, manual and
automatic. We can boot from iSCSI disks with help of dracut's service
in initrd, which would set node's startup mode to onboot, then create
iSCSI sessions.

While the configure of onboot mode is recorded in file of initrd stage
and would be lost when switch to rootfs. Even if we update the startup
mode to onboot by hand after switch to rootfs, it is possible that the
configure would be covered by another discovery command.

root would be mounted on iSCSI disks when boot from iSCSI disks, if the
sessions is logged out, the related disks would be removed, which would
cause the whole system halt.

So we need record session's start up mode in kernel and check this
mode before logout this session.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 drivers/infiniband/ulp/iser/iscsi_iser.c | 1 +
 drivers/scsi/be2iscsi/be_iscsi.c         | 1 +
 drivers/scsi/bnx2i/bnx2i_iscsi.c         | 1 +
 drivers/scsi/cxgbi/libcxgbi.c            | 1 +
 drivers/scsi/iscsi_tcp.c                 | 1 +
 drivers/scsi/libiscsi.c                  | 5 +++++
 drivers/scsi/qedi/qedi_iscsi.c           | 1 +
 drivers/scsi/qla4xxx/ql4_os.c            | 1 +
 drivers/scsi/scsi_transport_iscsi.c      | 4 ++++
 include/scsi/iscsi_if.h                  | 1 +
 include/scsi/libiscsi.h                  | 1 +
 11 files changed, 18 insertions(+)

diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
index 620ae5b2d80d..778c023673ea 100644
--- a/drivers/infiniband/ulp/iser/iscsi_iser.c
+++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
@@ -947,6 +947,7 @@ static umode_t iser_attr_is_visible(int param_type, int param)
 		case ISCSI_PARAM_IFACE_NAME:
 		case ISCSI_PARAM_INITIATOR_NAME:
 		case ISCSI_PARAM_DISCOVERY_SESS:
+		case ISCSI_PARAM_NODE_STARTUP:
 			return S_IRUGO;
 		default:
 			return 0;
diff --git a/drivers/scsi/be2iscsi/be_iscsi.c b/drivers/scsi/be2iscsi/be_iscsi.c
index 8aeaddc93b16..a21a4d9ab8b8 100644
--- a/drivers/scsi/be2iscsi/be_iscsi.c
+++ b/drivers/scsi/be2iscsi/be_iscsi.c
@@ -1401,6 +1401,7 @@ umode_t beiscsi_attr_is_visible(int param_type, int param)
 		case ISCSI_PARAM_LU_RESET_TMO:
 		case ISCSI_PARAM_IFACE_NAME:
 		case ISCSI_PARAM_INITIATOR_NAME:
+		case ISCSI_PARAM_NODE_STARTUP:
 			return S_IRUGO;
 		default:
 			return 0;
diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2i_iscsi.c
index a3c800e04a2e..d1fb06d8a92e 100644
--- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
+++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
@@ -2237,6 +2237,7 @@ static umode_t bnx2i_attr_is_visible(int param_type, int param)
 		case ISCSI_PARAM_BOOT_ROOT:
 		case ISCSI_PARAM_BOOT_NIC:
 		case ISCSI_PARAM_BOOT_TARGET:
+		case ISCSI_PARAM_NODE_STARTUP:
 			return S_IRUGO;
 		default:
 			return 0;
diff --git a/drivers/scsi/cxgbi/libcxgbi.c b/drivers/scsi/cxgbi/libcxgbi.c
index af281e271f88..111b2ac78964 100644
--- a/drivers/scsi/cxgbi/libcxgbi.c
+++ b/drivers/scsi/cxgbi/libcxgbi.c
@@ -3063,6 +3063,7 @@ umode_t cxgbi_attr_is_visible(int param_type, int param)
 		case ISCSI_PARAM_TGT_RESET_TMO:
 		case ISCSI_PARAM_IFACE_NAME:
 		case ISCSI_PARAM_INITIATOR_NAME:
+		case ISCSI_PARAM_NODE_STARTUP:
 			return S_IRUGO;
 		default:
 			return 0;
diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 5fb1f364e815..47a73fb3e4b0 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -1036,6 +1036,7 @@ static umode_t iscsi_sw_tcp_attr_is_visible(int param_type, int param)
 		case ISCSI_PARAM_TGT_RESET_TMO:
 		case ISCSI_PARAM_IFACE_NAME:
 		case ISCSI_PARAM_INITIATOR_NAME:
+		case ISCSI_PARAM_NODE_STARTUP:
 			return S_IRUGO;
 		default:
 			return 0;
diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index d95f4bcdeb2e..1f2b0a9a029e 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3576,6 +3576,8 @@ int iscsi_set_param(struct iscsi_cls_conn *cls_conn,
 		break;
 	case ISCSI_PARAM_LOCAL_IPADDR:
 		return iscsi_switch_str_param(&conn->local_ipaddr, buf);
+	case ISCSI_PARAM_NODE_STARTUP:
+		return iscsi_switch_str_param(&session->node_startup, buf);
 	default:
 		return -ENOSYS;
 	}
@@ -3712,6 +3714,9 @@ int iscsi_session_get_param(struct iscsi_cls_session *cls_session,
 		else
 			len = sysfs_emit(buf, "\n");
 		break;
+	case ISCSI_PARAM_NODE_STARTUP:
+		len = sysfs_emit(buf, "%s\n", session->node_startup);
+		break;
 	default:
 		return -ENOSYS;
 	}
diff --git a/drivers/scsi/qedi/qedi_iscsi.c b/drivers/scsi/qedi/qedi_iscsi.c
index 31ec429104e2..b947a5bca380 100644
--- a/drivers/scsi/qedi/qedi_iscsi.c
+++ b/drivers/scsi/qedi/qedi_iscsi.c
@@ -1437,6 +1437,7 @@ static umode_t qedi_attr_is_visible(int param_type, int param)
 		case ISCSI_PARAM_BOOT_ROOT:
 		case ISCSI_PARAM_BOOT_NIC:
 		case ISCSI_PARAM_BOOT_TARGET:
+		case ISCSI_PARAM_NODE_STARTUP:
 			return 0444;
 		default:
 			return 0;
diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
index 9e849f6b0d0f..1cb7c6dbe9d3 100644
--- a/drivers/scsi/qla4xxx/ql4_os.c
+++ b/drivers/scsi/qla4xxx/ql4_os.c
@@ -468,6 +468,7 @@ static umode_t qla4_attr_is_visible(int param_type, int param)
 		case ISCSI_PARAM_DISCOVERY_PARENT_IDX:
 		case ISCSI_PARAM_DISCOVERY_PARENT_TYPE:
 		case ISCSI_PARAM_LOCAL_IPADDR:
+		case ISCSI_PARAM_NODE_STARTUP:
 			return S_IRUGO;
 		default:
 			return 0;
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index c3fe5ecfee59..39c14d2a8aad 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -4367,6 +4367,7 @@ iscsi_session_attr(tsid, ISCSI_PARAM_TSID, 0);
 iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
 iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PARENT_IDX, 0);
 iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_PARENT_TYPE, 0);
+iscsi_session_attr(node_startup, ISCSI_PARAM_NODE_STARTUP, 0);
 
 static ssize_t
 show_priv_session_state(struct device *dev, struct device_attribute *attr,
@@ -4488,6 +4489,7 @@ static struct attribute *iscsi_session_attrs[] = {
 	&dev_attr_sess_def_taskmgmt_tmo.attr,
 	&dev_attr_sess_discovery_parent_idx.attr,
 	&dev_attr_sess_discovery_parent_type.attr,
+	&dev_attr_sess_node_startup.attr,
 	NULL,
 };
 
@@ -4587,6 +4589,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
 		return S_IRUGO;
 	else if (attr == &dev_attr_priv_sess_target_id.attr)
 		return S_IRUGO;
+	else if (attr == &dev_attr_sess_node_startup.attr)
+		param = ISCSI_PARAM_NODE_STARTUP;
 	else {
 		WARN_ONCE(1, "Invalid session attr");
 		return 0;
diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
index 5225a23f2d0e..e46e69c1fd02 100644
--- a/include/scsi/iscsi_if.h
+++ b/include/scsi/iscsi_if.h
@@ -610,6 +610,7 @@ enum iscsi_param {
 	ISCSI_PARAM_DISCOVERY_PARENT_IDX,
 	ISCSI_PARAM_DISCOVERY_PARENT_TYPE,
 	ISCSI_PARAM_LOCAL_IPADDR,
+	ISCSI_PARAM_NODE_STARTUP,
 	/* must always be last */
 	ISCSI_PARAM_MAX,
 };
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index 654cc3918c94..af4ccdcc1140 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -327,6 +327,7 @@ struct iscsi_session {
 	char			*boot_target;
 	char			*portal_type;
 	char			*discovery_parent_type;
+	char			*node_startup;
 	uint16_t		discovery_parent_idx;
 	uint16_t		def_taskmgmt_tmo;
 	uint16_t		tsid;
-- 
2.35.3

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221122213040.4128105-1-haowenchao%40huawei.com.
