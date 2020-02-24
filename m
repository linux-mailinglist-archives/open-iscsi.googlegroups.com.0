Return-Path: <open-iscsi+bncBAABBO4G3PZAKGQEK73BHGA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BE4170896
	for <lists+open-iscsi@lfdr.de>; Wed, 26 Feb 2020 20:13:00 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id p13sf95425oto.12
        for <lists+open-iscsi@lfdr.de>; Wed, 26 Feb 2020 11:13:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582744379; cv=pass;
        d=google.com; s=arc-20160816;
        b=CP3X6BEKrTCEVQ18tZ6IKUmv9NOgSWtT9IIhSUUjIoDFfdOcYoRAgA+z1+oW0xBH52
         Nr2hKkPZv4kpCmDs383H6q7miAq/IVtIJhM3TNX3R7UFSXvtmu1PCbYaBdicorQ5g29F
         467VB9CymFNjPNu1cchkrb2vl70uYmex0Y6PtPeqXUNl+aevgF6/oN0sGIiG+5zFLoFJ
         N4fyhA0UFvpWSZ0StKwbgIF64QtZQTWeBU4YSWKZuGYC7VsKzeWuP+pbc9Kc+BA2rnpa
         5Yxml592g6iPvWvxytJOfoskpOqbi1zAWUQ6Jx5E8MIfBcQmCiWGpZtm4Kng6PM166Qo
         dwOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=JFzkd1IgEcEOYTB5rRZ60GWKJ8c87XRWDITXexElrvw=;
        b=LKHVudaYDK6O24IMPM27MnxqqBB5Hh6OkwmHAsaCjA0cYzxHFkdbuFJ1eSFQxSX6gA
         yS20JldO3BXiKtKVd25TF2PEIqkb70mRNw3E4WHh+B3rhWgCBwnhU2pLY6U9h4/ohJEq
         cVsYgGkK9uQmW74fuLWFzejNEge969QWxEJ4Eyrlh3nu5DgwLWBRYCdE26/Dv/iQkcEX
         XaOJU4DgoSsb7GxtX6RVx2Wh1oGkXTGbbXJGdmnGVwgK6osnVrEp2PiZlLK4X9LrF3eE
         TNQhIOvsVquu8JzOfmWLLqsLNFizgNESkqMkn0tcYlMxsfJevPaeSRuofiQg8y4Sa6Jh
         cS+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=puN1Luss;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.129 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JFzkd1IgEcEOYTB5rRZ60GWKJ8c87XRWDITXexElrvw=;
        b=rcbtXCA0227F4bDt4cbBdS0M6DaNds/3zVTf2OfJw9gXgUTZgAwNfqVY7K3Fp4/ipX
         6mcUNFOqPw+mVlKfRZvTvZzxJneLFqZLUnA7kMnwV1/CSARaWhzN1PyekI11FcQiGety
         vJckI4SJcd+Twx5nQqc2fN2tOloof0eDO3PVqIgNcJiudgbVgXG8aLarSt4/eXwQXAdz
         ZsMSxwCBv5NhKFIHdGP5yEKvtcs5RpVCgZJjGmPQKuIIoIy+OnGMeyhnzwNyO2wHnm4K
         GSNAh0uW8SeCOAWh58+s3biovYbXuKGWICbMwuVHY5H+gZIWXCLjdAC53+hPJLkKUG6a
         EX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JFzkd1IgEcEOYTB5rRZ60GWKJ8c87XRWDITXexElrvw=;
        b=nsVU/JuBJOOSZEnZQDW/Da/g7GF+68LHfx/0YCGvp00KvNrPXboH/l20Irxb4CsoFx
         Jke815oehn8E2kOISD589iwKjIU/YUZXoRNoaoi40yMWXk2+8gkKP7/UFfX9ZBwKhG9Z
         /eZchqQDEYuBmS/7R/2qwdJp3lSSXL0IhOiiV8EzdbZYvDXxsCrgcyYmY88JbEjoztwQ
         RmP54/IrF/zV0nYtZwh6jSmdD0sXNxAhbs5ZStmM6jfDnGVWATt26q8Dz9goGcc2k24K
         VpVlGWjxvihUIEVJzIF1Y3B/lYTPH1Akmw8Xluu2dLGDK9bi6BOrkspJPPQqgvRLXsN5
         GzaA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXBJcs1CBSvCenTGDwsrpFnwPyu+WgPE2/Kx7zgSAC35Azv5flm
	uQvzwbF1dPiCDKh/6kA/8dQ=
X-Google-Smtp-Source: APXvYqwT4TDPassZXrt/t3lyyFOIvyWNDdQG6hxQEIVyHbkSm6+YlmUOPFLOpN15+UV9ctHhP9oeEQ==
X-Received: by 2002:a54:4f16:: with SMTP id e22mr429874oiy.170.1582744379185;
        Wed, 26 Feb 2020 11:12:59 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:910:: with SMTP id w16ls26574oih.2.gmail; Wed, 26
 Feb 2020 11:12:59 -0800 (PST)
X-Received: by 2002:aca:b588:: with SMTP id e130mr421314oif.176.1582744379012;
        Wed, 26 Feb 2020 11:12:59 -0800 (PST)
Received: by 2002:aca:c384:0:0:0:0:0 with SMTP id t126msoif;
        Mon, 24 Feb 2020 08:11:20 -0800 (PST)
X-Received: by 2002:a17:902:a414:: with SMTP id p20mr52317784plq.7.1582560680164;
        Mon, 24 Feb 2020 08:11:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582560680; cv=none;
        d=google.com; s=arc-20160816;
        b=VY+WWh/ZNSZ6A1OKr2OzIgEIQrIrqZn/p8aRUMCi+XhOzLAxw+RzeBfKw3obNgI+tK
         32T7pcgcVgS/QFEs9V0Sx3zancWqPGNKcu4/fUvOU6/V69S7OsSFxL/Q+aTrpsbgqOXi
         Mr3oKQTajKnmpf9BiS4iZaR4YH0JWUEgudoKdI/DvwNw1JG0l4eE3lIuE9EaNNVpM+HR
         eDjgmKrK4w286LDo5fm0iBQ9iFaps41JNTHmpbZyjvEj6mUrc/1Q3zzGCpYti+wbQKpR
         PsgC1ywbd/VYcjb6mlaWYLYC3cEbZfkLsIpUH8218sOpPjSDsUOQmjkcoWuIVnkE03bT
         OO5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7e28GVAyaL5GQzoBarUOu44L4v9JQuyAxSP9Znha/Wk=;
        b=r8oBCrs/UKJIojixwP2EZRzKdQS5nU8/MxVeNpaxr4N2T96X6Z1YbL4Njn2XJeH/zo
         bzHezppXwpYN6vf61FMKblFZafoebuYrhv2W6ykoShLUVY+8Qhqr7hiy+kK3dN8qGA9j
         n9WHxt7pGl5kIbrACd9A5tnU9wUTXp+7xqrV1QFwcE1qHY6Ch63JYUFLh4FwxM4qqY4I
         N5FzNgrkrhahkOQRQEWrmiQGQ45VeK6xchr6sxM6TTRzushGCzmSFwj1z5OZHeUycm95
         aRYSvUWBCOSiKvRqF6PVfnAh/Omk9jh6ecr0D+3XwasAMrcf0d0zwMAqJmoSS/YlEQPo
         fAtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=puN1Luss;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.129 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway23.websitewelcome.com (gateway23.websitewelcome.com. [192.185.50.129])
        by gmr-mx.google.com with ESMTPS id 59si772209ple.2.2020.02.24.08.11.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Feb 2020 08:11:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.129 as permitted sender) client-ip=192.185.50.129;
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
	by gateway23.websitewelcome.com (Postfix) with ESMTP id 24858F72B
	for <open-iscsi@googlegroups.com>; Mon, 24 Feb 2020 10:11:19 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 6GKFjYMUavBMd6GKFjUa1E; Mon, 24 Feb 2020 10:11:19 -0600
X-Authority-Reason: nr=8
Received: from [200.68.140.135] (port=3410 helo=embeddedor)
	by gator4166.hostgator.com with esmtpa (Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1j6GKC-002dTZ-Uk; Mon, 24 Feb 2020 10:11:17 -0600
Date: Mon, 24 Feb 2020 10:14:06 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Satish Kharat <satishkh@cisco.com>,
	Sesidhar Baddela <sebaddel@cisco.com>,
	Karan Tilak Kumar <kartilak@cisco.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Brian King <brking@us.ibm.com>,
	Intel SCU Linux support <intel-linux-scu@intel.com>,
	Artur Paszkiewicz <artur.paszkiewicz@intel.com>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Chaitra P B <chaitra.basappa@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	MPT-FusionLinux.pdl@broadcom.com, open-iscsi@googlegroups.com,
	linux-rdma@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: [PATCH] scsi: Replace zero-length array with flexible-array member
Message-ID: <20200224161406.GA21454@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.140.135
X-Source-L: No
X-Exim-ID: 1j6GKC-002dTZ-Uk
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [200.68.140.135]:3410
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 18
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=puN1Luss;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.50.129 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/scsi/fnic/vnic_devcmd.h      |  2 +-
 drivers/scsi/ipr.h                   |  6 +++---
 drivers/scsi/isci/sas.h              |  2 +-
 drivers/scsi/mpt3sas/mpt3sas_scsih.c |  2 +-
 drivers/scsi/mvsas/mv_sas.h          |  2 +-
 drivers/scsi/mvumi.h                 |  4 ++--
 drivers/scsi/pmcraid.h               |  2 +-
 drivers/scsi/snic/vnic_devcmd.h      |  2 +-
 drivers/scsi/stex.c                  |  2 +-
 include/scsi/iscsi_if.h              | 10 +++++-----
 include/scsi/scsi_bsg_iscsi.h        |  2 +-
 include/scsi/scsi_device.h           |  4 ++--
 include/scsi/scsi_host.h             |  2 +-
 include/scsi/scsi_ioctl.h            |  2 +-
 include/scsi/srp.h                   |  8 ++++----
 include/uapi/scsi/scsi_bsg_fc.h      |  2 +-
 16 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/scsi/fnic/vnic_devcmd.h b/drivers/scsi/fnic/vnic_devcmd.h
index c5dde556dc7c..c20d30e36dfc 100644
--- a/drivers/scsi/fnic/vnic_devcmd.h
+++ b/drivers/scsi/fnic/vnic_devcmd.h
@@ -442,7 +442,7 @@ struct vnic_devcmd_notify {
 struct vnic_devcmd_provinfo {
 	u8 oui[3];
 	u8 type;
-	u8 data[0];
+	u8 data[];
 };
 
 /*
diff --git a/drivers/scsi/ipr.h b/drivers/scsi/ipr.h
index a67baeb36d1f..fd3929a19ab5 100644
--- a/drivers/scsi/ipr.h
+++ b/drivers/scsi/ipr.h
@@ -451,12 +451,12 @@ struct ipr_config_table_hdr64 {
 
 struct ipr_config_table {
 	struct ipr_config_table_hdr hdr;
-	struct ipr_config_table_entry dev[0];
+	struct ipr_config_table_entry dev[];
 }__attribute__((packed, aligned (4)));
 
 struct ipr_config_table64 {
 	struct ipr_config_table_hdr64 hdr64;
-	struct ipr_config_table_entry64 dev[0];
+	struct ipr_config_table_entry64 dev[];
 }__attribute__((packed, aligned (8)));
 
 struct ipr_config_table_entry_wrapper {
@@ -792,7 +792,7 @@ struct ipr_mode_page28 {
 	struct ipr_mode_page_hdr hdr;
 	u8 num_entries;
 	u8 entry_length;
-	struct ipr_dev_bus_entry bus[0];
+	struct ipr_dev_bus_entry bus[];
 }__attribute__((packed));
 
 struct ipr_mode_page24 {
diff --git a/drivers/scsi/isci/sas.h b/drivers/scsi/isci/sas.h
index dc26b4aea99e..15d8f3631ab7 100644
--- a/drivers/scsi/isci/sas.h
+++ b/drivers/scsi/isci/sas.h
@@ -201,7 +201,7 @@ struct smp_req {
 	u8 func;		/* byte 1 */
 	u8 alloc_resp_len;	/* byte 2 */
 	u8 req_len;		/* byte 3 */
-	u8 req_data[0];
+	u8 req_data[];
 }  __packed;
 
 /*
diff --git a/drivers/scsi/mpt3sas/mpt3sas_scsih.c b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
index c597d544eb39..778d5e6ce385 100644
--- a/drivers/scsi/mpt3sas/mpt3sas_scsih.c
+++ b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
@@ -207,7 +207,7 @@ struct fw_event_work {
 	u8			ignore;
 	u16			event;
 	struct kref		refcount;
-	char			event_data[0] __aligned(4);
+	char			event_data[] __aligned(4);
 };
 
 static void fw_event_work_free(struct kref *r)
diff --git a/drivers/scsi/mvsas/mv_sas.h b/drivers/scsi/mvsas/mv_sas.h
index 519edc796691..327fdd5ee962 100644
--- a/drivers/scsi/mvsas/mv_sas.h
+++ b/drivers/scsi/mvsas/mv_sas.h
@@ -394,7 +394,7 @@ struct mvs_info {
 	dma_addr_t bulk_buffer_dma1;
 #define TRASH_BUCKET_SIZE    	0x20000
 	void *dma_pool;
-	struct mvs_slot_info slot_info[0];
+	struct mvs_slot_info slot_info[];
 };
 
 struct mvs_prv_info{
diff --git a/drivers/scsi/mvumi.h b/drivers/scsi/mvumi.h
index ec8cc2207536..60d5691fc4ab 100644
--- a/drivers/scsi/mvumi.h
+++ b/drivers/scsi/mvumi.h
@@ -130,7 +130,7 @@ enum {
 struct mvumi_hotplug_event {
 	u16 size;
 	u8 dummy[2];
-	u8 bitmap[0];
+	u8 bitmap[];
 };
 
 struct mvumi_driver_event {
@@ -290,7 +290,7 @@ struct mvumi_rsp_frame {
 
 struct mvumi_ob_data {
 	struct list_head list;
-	unsigned char data[0];
+	unsigned char data[];
 };
 
 struct version_info {
diff --git a/drivers/scsi/pmcraid.h b/drivers/scsi/pmcraid.h
index a4f7eb8f50a3..15c962108075 100644
--- a/drivers/scsi/pmcraid.h
+++ b/drivers/scsi/pmcraid.h
@@ -623,7 +623,7 @@ struct pmcraid_aen_msg {
 	u32 hostno;
 	u32 length;
 	u8  reserved[8];
-	u8  data[0];
+	u8  data[];
 };
 
 /* Controller state event message type */
diff --git a/drivers/scsi/snic/vnic_devcmd.h b/drivers/scsi/snic/vnic_devcmd.h
index d81b4f0ceaaa..0e0fa38f8d90 100644
--- a/drivers/scsi/snic/vnic_devcmd.h
+++ b/drivers/scsi/snic/vnic_devcmd.h
@@ -208,7 +208,7 @@ struct vnic_devcmd_notify {
 struct vnic_devcmd_provinfo {
 	u8 oui[3];
 	u8 type;
-	u8 data[0];
+	u8 data[];
 };
 
 /*
diff --git a/drivers/scsi/stex.c b/drivers/scsi/stex.c
index 33287b6bdf0e..d4f10c0d813c 100644
--- a/drivers/scsi/stex.c
+++ b/drivers/scsi/stex.c
@@ -236,7 +236,7 @@ struct req_msg {
 	u8 data_dir;
 	u8 payload_sz;		/* payload size in 4-byte, not used */
 	u8 cdb[STEX_CDB_LENGTH];
-	u32 variable[0];
+	u32 variable[];
 };
 
 struct status_msg {
diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
index 92b11c7e0b4f..b0e240b10bf9 100644
--- a/include/scsi/iscsi_if.h
+++ b/include/scsi/iscsi_if.h
@@ -311,7 +311,7 @@ enum iscsi_param_type {
 struct iscsi_param_info {
 	uint32_t len;		/* Actual length of the param value */
 	uint16_t param;		/* iscsi param */
-	uint8_t value[0];	/* length sized value follows */
+	uint8_t value[];	/* length sized value follows */
 } __packed;
 
 struct iscsi_iface_param_info {
@@ -320,7 +320,7 @@ struct iscsi_iface_param_info {
 	uint16_t param;		/* iscsi param value */
 	uint8_t iface_type;	/* IPv4 or IPv6 */
 	uint8_t param_type;	/* iscsi_param_type */
-	uint8_t value[0];	/* length sized value follows */
+	uint8_t value[];	/* length sized value follows */
 } __packed;
 
 /*
@@ -697,7 +697,7 @@ enum iscsi_flashnode_param {
 struct iscsi_flashnode_param_info {
 	uint32_t len;		/* Actual length of the param */
 	uint16_t param;		/* iscsi param value */
-	uint8_t value[0];	/* length sized value follows */
+	uint8_t value[];	/* length sized value follows */
 } __packed;
 
 enum iscsi_discovery_parent_type {
@@ -815,7 +815,7 @@ struct iscsi_stats {
 	 * up to ISCSI_STATS_CUSTOM_MAX
 	 */
 	uint32_t custom_length;
-	struct iscsi_stats_custom custom[0]
+	struct iscsi_stats_custom custom[]
 		__attribute__ ((aligned (sizeof(uint64_t))));
 };
 
@@ -946,7 +946,7 @@ struct iscsi_offload_host_stats {
 	 * up to ISCSI_HOST_STATS_CUSTOM_MAX
 	 */
 	uint32_t custom_length;
-	struct iscsi_host_stats_custom custom[0]
+	struct iscsi_host_stats_custom custom[]
 		__aligned(sizeof(uint64_t));
 };
 
diff --git a/include/scsi/scsi_bsg_iscsi.h b/include/scsi/scsi_bsg_iscsi.h
index fa0c820a1663..6b8128005af8 100644
--- a/include/scsi/scsi_bsg_iscsi.h
+++ b/include/scsi/scsi_bsg_iscsi.h
@@ -52,7 +52,7 @@ struct iscsi_bsg_host_vendor {
 	uint64_t vendor_id;
 
 	/* start of vendor command area */
-	uint32_t vendor_cmd[0];
+	uint32_t vendor_cmd[];
 };
 
 /* Response:
diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device.h
index f8312a3e5b42..4dc158cf09b8 100644
--- a/include/scsi/scsi_device.h
+++ b/include/scsi/scsi_device.h
@@ -231,7 +231,7 @@ struct scsi_device {
 	struct mutex		state_mutex;
 	enum scsi_device_state sdev_state;
 	struct task_struct	*quiesced_by;
-	unsigned long		sdev_data[0];
+	unsigned long		sdev_data[];
 } __attribute__((aligned(sizeof(unsigned long))));
 
 #define	to_scsi_device(d)	\
@@ -315,7 +315,7 @@ struct scsi_target {
 	char			scsi_level;
 	enum scsi_target_state	state;
 	void 			*hostdata; /* available to low-level driver */
-	unsigned long		starget_data[0]; /* for the transport */
+	unsigned long		starget_data[]; /* for the transport */
 	/* starget_data must be the last element!!!! */
 } __attribute__((aligned(sizeof(unsigned long))));
 
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index 7a97fb8104cf..e6811ea8f984 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -682,7 +682,7 @@ struct Scsi_Host {
 	 * and also because some compilers (m68k) don't automatically force
 	 * alignment to a long boundary.
 	 */
-	unsigned long hostdata[0]  /* Used for storage of host specific stuff */
+	unsigned long hostdata[]  /* Used for storage of host specific stuff */
 		__attribute__ ((aligned (sizeof(unsigned long))));
 };
 
diff --git a/include/scsi/scsi_ioctl.h b/include/scsi/scsi_ioctl.h
index 4fe69d863b5d..b465799f4d2d 100644
--- a/include/scsi/scsi_ioctl.h
+++ b/include/scsi/scsi_ioctl.h
@@ -27,7 +27,7 @@ struct scsi_device;
 typedef struct scsi_ioctl_command {
 	unsigned int inlen;
 	unsigned int outlen;
-	unsigned char data[0];
+	unsigned char data[];
 } Scsi_Ioctl_Command;
 
 typedef struct scsi_idlun {
diff --git a/include/scsi/srp.h b/include/scsi/srp.h
index 9220758d5087..177d8026e96f 100644
--- a/include/scsi/srp.h
+++ b/include/scsi/srp.h
@@ -109,7 +109,7 @@ struct srp_direct_buf {
 struct srp_indirect_buf {
 	struct srp_direct_buf	table_desc;
 	__be32			len;
-	struct srp_direct_buf	desc_list[0];
+	struct srp_direct_buf	desc_list[];
 } __attribute__((packed));
 
 /* Immediate data buffer descriptor as defined in SRP2. */
@@ -244,7 +244,7 @@ struct srp_cmd {
 	u8	reserved4;
 	u8	add_cdb_len;
 	u8	cdb[16];
-	u8	add_data[0];
+	u8	add_data[];
 };
 
 enum {
@@ -274,7 +274,7 @@ struct srp_rsp {
 	__be32	data_in_res_cnt;
 	__be32	sense_data_len;
 	__be32	resp_data_len;
-	u8	data[0];
+	u8	data[];
 } __attribute__((packed));
 
 struct srp_cred_req {
@@ -306,7 +306,7 @@ struct srp_aer_req {
 	struct scsi_lun	lun;
 	__be32	sense_data_len;
 	u32	reserved3;
-	u8	sense_data[0];
+	u8	sense_data[];
 } __attribute__((packed));
 
 struct srp_aer_rsp {
diff --git a/include/uapi/scsi/scsi_bsg_fc.h b/include/uapi/scsi/scsi_bsg_fc.h
index 3ae65e93235c..7f5930801f72 100644
--- a/include/uapi/scsi/scsi_bsg_fc.h
+++ b/include/uapi/scsi/scsi_bsg_fc.h
@@ -209,7 +209,7 @@ struct fc_bsg_host_vendor {
 	__u64 vendor_id;
 
 	/* start of vendor command area */
-	__u32 vendor_cmd[0];
+	__u32 vendor_cmd[];
 };
 
 /* Response:
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200224161406.GA21454%40embeddedor.
