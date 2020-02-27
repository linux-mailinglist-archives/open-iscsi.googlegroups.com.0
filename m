Return-Path: <open-iscsi+bncBC6MFJWO34DBB5W63XZAKGQEW6LSUAQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C75F171174
	for <lists+open-iscsi@lfdr.de>; Thu, 27 Feb 2020 08:27:50 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id y8sf1445568edv.4
        for <lists+open-iscsi@lfdr.de>; Wed, 26 Feb 2020 23:27:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582788470; cv=pass;
        d=google.com; s=arc-20160816;
        b=oaDRgQA3GAb2FFPzx59yHltIjK6NXEsioLtnfFqR3nWVhUzCpuu9jeErlEo4srpQOI
         ZnEfl+w3thmDo+dFENRRQb0PN2vGTEvxdxz0Uy8w78x0yY6T8+UKPuRkFu6YW2ff4VCK
         1XsuMq+gRpoamXa16K0GlKzYNtlmbRdwVmAvgyTpqaOC+Cmi19WP/rYlvgS0NmG1G3ef
         tse8TEyAm7YX3//94tvCPm0TQDg6oZZF97caO6U3bPgGmLCe11YiRCaHe7aslL4C+QVw
         P2sMfPeXQ0aCV1eK+seEwaRKzYSa6EDuCT6fd7dMwdogRlNV/1FFC7qhUm9Hw8QdgqAL
         zqTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=i128W8pt1IhIjl+CpagY/tro8krDIz9OOnRCayW6e6w=;
        b=0pFMc1qODeWsHcJ64sGuZ5qEBmvJTkGvUXJnNqYksK7cxrHe+IlmQWBffaivMfH+U8
         kK/lmwgtwjuwBTJGmbaV8/yqAquiYLtGo+oQf72yAB9kooJglkH3GursEU4uFZXDApLI
         9n6qwQDVmMdL64+wrp9doGJCwB2eL/yNHFRxBb8KvJE9Fmq5cuZBvCj4YpcBfhm5dagk
         p+tYuhz8zzr1sE2auTw1dpSZBMmXaniGm9wqyAwWBw/ERx415MM95ZgzjmwcC6XPjNpR
         CzTLMKbB8sEEQsdfdyN4OP9iDBSfqF7aPLqL6zO3VXDszz8DXrICKqHwNcT60gwBXcIB
         X3xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=i128W8pt1IhIjl+CpagY/tro8krDIz9OOnRCayW6e6w=;
        b=qMyUh/xedrBPD4sYKk+h7qCuf3gzzy2H0VlD1Bn7yKIns4Truftg4zovCSudHu7gLA
         Qgg5M78FZ5IvM9IF3YMUwsd9uliTfgsBlCFdXISb/jV9yOZ95s9i6MtULaOzkqpmG8uy
         SIoFQgncZuEVlX7g04CIeOmjOe4jk+myLvwlYG7V5dpBiJs4Gze8COcKA3Bd3AizUpLT
         yHvWsKVnIyCwUMygt8/Av4FfxNCqbblKsGNxWZZwJBLdJOH+eF/Lhrv6En6MgZbPYX5q
         OkyziOKHPXccKB8tAFvCnzTrsDNU9sRQO4jBrKErapjgtwiBJDg8OVoQHIV8AHt/15bi
         EfEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i128W8pt1IhIjl+CpagY/tro8krDIz9OOnRCayW6e6w=;
        b=MX2pkk8vCUxv4ZreYmDQonAuFFh6XYW6KQKphL00Ym/MP0cR2ZddXTz4PT8duYdMWO
         L1WfADIjiWpBQnqtcf99Vocm/Lqj1JnNleLHLV3NlcCQgee0meDjPvgzzrDlKsM8Aput
         A7Sqa5kdZueIUu4Pgrys2mxElk8LaT7OWQNzYC//rf3lz6yAAAYCNPGIkIl2+5GmZct0
         QGKb2GYk7VJy+u6ztWun+zPA0O+aJjrk58y/UMrS/uegm06ot2bmqFCV0cs7jyCUW4pp
         TPNAkI9vsrgu8ezdqMyC1Luy7Rimts8yj58KUSCJgscZhhKmoJV0Lz3wrdkn2ZHiLf7k
         CfuQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV3FbA9W1kg/BGHTJ68AfAmCJORROth4XpM+UqTmsRL5i2tnn0J
	dyx9q4036q92egvLl+FDij8=
X-Google-Smtp-Source: APXvYqxo+U3608Cv1sfEiN0mi1t75zQriPDetfEXbQlPoHM2nMOfjf6fOUf5UeE8wkAijOZE+JfwnA==
X-Received: by 2002:a05:6402:1592:: with SMTP id c18mr2516470edv.333.1582788470107;
        Wed, 26 Feb 2020 23:27:50 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:bfe7:: with SMTP id vr7ls794304ejb.1.gmail; Wed, 26
 Feb 2020 23:27:49 -0800 (PST)
X-Received: by 2002:a17:906:9418:: with SMTP id q24mr1511233ejx.237.1582788469556;
        Wed, 26 Feb 2020 23:27:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582788469; cv=none;
        d=google.com; s=arc-20160816;
        b=UvCksHChHT40M24qAUMS8osQOWRmmhf1pn5vAWPZi20bopBY1ccsRfemcjiL1vxhYS
         SzhWPztppyjWrz/Rkwi8/YUcGKdfdTsjN2Cj1OiEqewdU4Td2du5E+m09928WnSvlIIa
         d8I/Vhb15NUp5VDQcjIe42pgvLrBSywHahOhhY/DIaiCWus40ZDYkjqlGF++RrG4rcf6
         KAAx5+9zdBPUzSJSY2t/FMRLqFO7gTfU5eoJT2pSLabfEGghew+I/C53YKLfaACUm7mR
         zuQ0YabasEBIQS5g0aH1MoFi9LWIDp1JFY6LxtsAlNzBLi7zvb9xhGEAWkN/YZo6aW7B
         Sm4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=x6jQoRf3xG/EmcYBMfhKUbpkN13FYx6ymcm7RJPlr6Q=;
        b=0IavSBtn6pZnUjelj8zJhAtHJ9uR68HQ8dPFoXXaQVj7NNWhJJF25cH2ryxMK8vnXp
         EuBKHc7PrTVS96Gxt87nkXsvVwn2V3zJFu3tMpnRL6cwc5KM7pD0U5Rhb4hur7zafVgt
         fknoclGklDeaeXsFqrCBmgQBXxGt3CllHKeRD+Ke/vd05RfOvkyJ2UxicHNqxJghVRZ4
         DFCQpptbaLH8H9JyHUECHbd2fAWssJhHHYSEO1Zt3IsDNH0TEaBtLQIhoRTzYNtaKT46
         f3u4vXbE7hfU8XUPGWkZyFGBcMKEsvIOFpytXVLMfQd8Q14fYzEwxLRSUGdEb1QyQMsu
         9KhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf8])
        by gmr-mx.google.com with ESMTPS id s16si151709edy.3.2020.02.26.23.27.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Feb 2020 23:27:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf8;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id B4BF16000052
	for <open-iscsi@googlegroups.com>; Thu, 27 Feb 2020 08:27:48 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id EB2B26000051
	for <open-iscsi@googlegroups.com>; Thu, 27 Feb 2020 08:27:45 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 27 Feb 2020 08:27:45 +0100
Message-Id: <5E576F6F020000A1000373E1@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.0
Date: Thu, 27 Feb 2020 08:27:43 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "Lee Duncan" <lduncan@suse.com>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>,
 <linux-kernel@vger.kernel.org>
Subject: Antw: [EXT] [PATCH] scsi: Replace zero-length array with
 flexible-array member
References: <32123_1582744382_5E56C33B_32123_188_1_20200224161406.GA21454@embeddedor>
In-Reply-To: <32123_1582744382_5E56C33B_32123_188_1_20200224161406.GA21454@embeddedor>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

Hi!

Personally I think variable-sized structures are a bad thing, independent of the syntax being used.
30 years ago saving one indirection would have been an argument for such structures, but nowadays?

Regards,
Ulrich

>>> "Gustavo A. R. Silva" <gustavo@embeddedor.com> schrieb am 24.02.2020 um 17:14
in Nachricht
<32123_1582744382_5E56C33B_32123_188_1_20200224161406.GA21454@embeddedor>:
> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
> 
> struct foo {
>         int stuff;
>         struct boo array[];
> };
> 
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertently introduced[3] to the codebase from now on.
> 
> Also, notice that, dynamic memory allocations won't be affected by
> this change:
> 
> "Flexible array members have incomplete type, and so the sizeof operator
> may not be applied. As a quirk of the original implementation of
> zero-length arrays, sizeof evaluates to zero."[1]
> 
> This issue was found with the help of Coccinelle.
> 
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html 
> [2] https://github.com/KSPP/linux/issues/21 
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
> 
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> ---
>  drivers/scsi/fnic/vnic_devcmd.h      |  2 +-
>  drivers/scsi/ipr.h                   |  6 +++---
>  drivers/scsi/isci/sas.h              |  2 +-
>  drivers/scsi/mpt3sas/mpt3sas_scsih.c |  2 +-
>  drivers/scsi/mvsas/mv_sas.h          |  2 +-
>  drivers/scsi/mvumi.h                 |  4 ++--
>  drivers/scsi/pmcraid.h               |  2 +-
>  drivers/scsi/snic/vnic_devcmd.h      |  2 +-
>  drivers/scsi/stex.c                  |  2 +-
>  include/scsi/iscsi_if.h              | 10 +++++-----
>  include/scsi/scsi_bsg_iscsi.h        |  2 +-
>  include/scsi/scsi_device.h           |  4 ++--
>  include/scsi/scsi_host.h             |  2 +-
>  include/scsi/scsi_ioctl.h            |  2 +-
>  include/scsi/srp.h                   |  8 ++++----
>  include/uapi/scsi/scsi_bsg_fc.h      |  2 +-
>  16 files changed, 27 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/scsi/fnic/vnic_devcmd.h 
> b/drivers/scsi/fnic/vnic_devcmd.h
> index c5dde556dc7c..c20d30e36dfc 100644
> --- a/drivers/scsi/fnic/vnic_devcmd.h
> +++ b/drivers/scsi/fnic/vnic_devcmd.h
> @@ -442,7 +442,7 @@ struct vnic_devcmd_notify {
>  struct vnic_devcmd_provinfo {
>  	u8 oui[3];
>  	u8 type;
> -	u8 data[0];
> +	u8 data[];
>  };
>  
>  /*
> diff --git a/drivers/scsi/ipr.h b/drivers/scsi/ipr.h
> index a67baeb36d1f..fd3929a19ab5 100644
> --- a/drivers/scsi/ipr.h
> +++ b/drivers/scsi/ipr.h
> @@ -451,12 +451,12 @@ struct ipr_config_table_hdr64 {
>  
>  struct ipr_config_table {
>  	struct ipr_config_table_hdr hdr;
> -	struct ipr_config_table_entry dev[0];
> +	struct ipr_config_table_entry dev[];
>  }__attribute__((packed, aligned (4)));
>  
>  struct ipr_config_table64 {
>  	struct ipr_config_table_hdr64 hdr64;
> -	struct ipr_config_table_entry64 dev[0];
> +	struct ipr_config_table_entry64 dev[];
>  }__attribute__((packed, aligned (8)));
>  
>  struct ipr_config_table_entry_wrapper {
> @@ -792,7 +792,7 @@ struct ipr_mode_page28 {
>  	struct ipr_mode_page_hdr hdr;
>  	u8 num_entries;
>  	u8 entry_length;
> -	struct ipr_dev_bus_entry bus[0];
> +	struct ipr_dev_bus_entry bus[];
>  }__attribute__((packed));
>  
>  struct ipr_mode_page24 {
> diff --git a/drivers/scsi/isci/sas.h b/drivers/scsi/isci/sas.h
> index dc26b4aea99e..15d8f3631ab7 100644
> --- a/drivers/scsi/isci/sas.h
> +++ b/drivers/scsi/isci/sas.h
> @@ -201,7 +201,7 @@ struct smp_req {
>  	u8 func;		/* byte 1 */
>  	u8 alloc_resp_len;	/* byte 2 */
>  	u8 req_len;		/* byte 3 */
> -	u8 req_data[0];
> +	u8 req_data[];
>  }  __packed;
>  
>  /*
> diff --git a/drivers/scsi/mpt3sas/mpt3sas_scsih.c 
> b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> index c597d544eb39..778d5e6ce385 100644
> --- a/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> +++ b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
> @@ -207,7 +207,7 @@ struct fw_event_work {
>  	u8			ignore;
>  	u16			event;
>  	struct kref		refcount;
> -	char			event_data[0] __aligned(4);
> +	char			event_data[] __aligned(4);
>  };
>  
>  static void fw_event_work_free(struct kref *r)
> diff --git a/drivers/scsi/mvsas/mv_sas.h b/drivers/scsi/mvsas/mv_sas.h
> index 519edc796691..327fdd5ee962 100644
> --- a/drivers/scsi/mvsas/mv_sas.h
> +++ b/drivers/scsi/mvsas/mv_sas.h
> @@ -394,7 +394,7 @@ struct mvs_info {
>  	dma_addr_t bulk_buffer_dma1;
>  #define TRASH_BUCKET_SIZE    	0x20000
>  	void *dma_pool;
> -	struct mvs_slot_info slot_info[0];
> +	struct mvs_slot_info slot_info[];
>  };
>  
>  struct mvs_prv_info{
> diff --git a/drivers/scsi/mvumi.h b/drivers/scsi/mvumi.h
> index ec8cc2207536..60d5691fc4ab 100644
> --- a/drivers/scsi/mvumi.h
> +++ b/drivers/scsi/mvumi.h
> @@ -130,7 +130,7 @@ enum {
>  struct mvumi_hotplug_event {
>  	u16 size;
>  	u8 dummy[2];
> -	u8 bitmap[0];
> +	u8 bitmap[];
>  };
>  
>  struct mvumi_driver_event {
> @@ -290,7 +290,7 @@ struct mvumi_rsp_frame {
>  
>  struct mvumi_ob_data {
>  	struct list_head list;
> -	unsigned char data[0];
> +	unsigned char data[];
>  };
>  
>  struct version_info {
> diff --git a/drivers/scsi/pmcraid.h b/drivers/scsi/pmcraid.h
> index a4f7eb8f50a3..15c962108075 100644
> --- a/drivers/scsi/pmcraid.h
> +++ b/drivers/scsi/pmcraid.h
> @@ -623,7 +623,7 @@ struct pmcraid_aen_msg {
>  	u32 hostno;
>  	u32 length;
>  	u8  reserved[8];
> -	u8  data[0];
> +	u8  data[];
>  };
>  
>  /* Controller state event message type */
> diff --git a/drivers/scsi/snic/vnic_devcmd.h 
> b/drivers/scsi/snic/vnic_devcmd.h
> index d81b4f0ceaaa..0e0fa38f8d90 100644
> --- a/drivers/scsi/snic/vnic_devcmd.h
> +++ b/drivers/scsi/snic/vnic_devcmd.h
> @@ -208,7 +208,7 @@ struct vnic_devcmd_notify {
>  struct vnic_devcmd_provinfo {
>  	u8 oui[3];
>  	u8 type;
> -	u8 data[0];
> +	u8 data[];
>  };
>  
>  /*
> diff --git a/drivers/scsi/stex.c b/drivers/scsi/stex.c
> index 33287b6bdf0e..d4f10c0d813c 100644
> --- a/drivers/scsi/stex.c
> +++ b/drivers/scsi/stex.c
> @@ -236,7 +236,7 @@ struct req_msg {
>  	u8 data_dir;
>  	u8 payload_sz;		/* payload size in 4-byte, not used */
>  	u8 cdb[STEX_CDB_LENGTH];
> -	u32 variable[0];
> +	u32 variable[];
>  };
>  
>  struct status_msg {
> diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
> index 92b11c7e0b4f..b0e240b10bf9 100644
> --- a/include/scsi/iscsi_if.h
> +++ b/include/scsi/iscsi_if.h
> @@ -311,7 +311,7 @@ enum iscsi_param_type {
>  struct iscsi_param_info {
>  	uint32_t len;		/* Actual length of the param value */
>  	uint16_t param;		/* iscsi param */
> -	uint8_t value[0];	/* length sized value follows */
> +	uint8_t value[];	/* length sized value follows */
>  } __packed;
>  
>  struct iscsi_iface_param_info {
> @@ -320,7 +320,7 @@ struct iscsi_iface_param_info {
>  	uint16_t param;		/* iscsi param value */
>  	uint8_t iface_type;	/* IPv4 or IPv6 */
>  	uint8_t param_type;	/* iscsi_param_type */
> -	uint8_t value[0];	/* length sized value follows */
> +	uint8_t value[];	/* length sized value follows */
>  } __packed;
>  
>  /*
> @@ -697,7 +697,7 @@ enum iscsi_flashnode_param {
>  struct iscsi_flashnode_param_info {
>  	uint32_t len;		/* Actual length of the param */
>  	uint16_t param;		/* iscsi param value */
> -	uint8_t value[0];	/* length sized value follows */
> +	uint8_t value[];	/* length sized value follows */
>  } __packed;
>  
>  enum iscsi_discovery_parent_type {
> @@ -815,7 +815,7 @@ struct iscsi_stats {
>  	 * up to ISCSI_STATS_CUSTOM_MAX
>  	 */
>  	uint32_t custom_length;
> -	struct iscsi_stats_custom custom[0]
> +	struct iscsi_stats_custom custom[]
>  		__attribute__ ((aligned (sizeof(uint64_t))));
>  };
>  
> @@ -946,7 +946,7 @@ struct iscsi_offload_host_stats {
>  	 * up to ISCSI_HOST_STATS_CUSTOM_MAX
>  	 */
>  	uint32_t custom_length;
> -	struct iscsi_host_stats_custom custom[0]
> +	struct iscsi_host_stats_custom custom[]
>  		__aligned(sizeof(uint64_t));
>  };
>  
> diff --git a/include/scsi/scsi_bsg_iscsi.h b/include/scsi/scsi_bsg_iscsi.h
> index fa0c820a1663..6b8128005af8 100644
> --- a/include/scsi/scsi_bsg_iscsi.h
> +++ b/include/scsi/scsi_bsg_iscsi.h
> @@ -52,7 +52,7 @@ struct iscsi_bsg_host_vendor {
>  	uint64_t vendor_id;
>  
>  	/* start of vendor command area */
> -	uint32_t vendor_cmd[0];
> +	uint32_t vendor_cmd[];
>  };
>  
>  /* Response:
> diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device.h
> index f8312a3e5b42..4dc158cf09b8 100644
> --- a/include/scsi/scsi_device.h
> +++ b/include/scsi/scsi_device.h
> @@ -231,7 +231,7 @@ struct scsi_device {
>  	struct mutex		state_mutex;
>  	enum scsi_device_state sdev_state;
>  	struct task_struct	*quiesced_by;
> -	unsigned long		sdev_data[0];
> +	unsigned long		sdev_data[];
>  } __attribute__((aligned(sizeof(unsigned long))));
>  
>  #define	to_scsi_device(d)	\
> @@ -315,7 +315,7 @@ struct scsi_target {
>  	char			scsi_level;
>  	enum scsi_target_state	state;
>  	void 			*hostdata; /* available to low-level driver */
> -	unsigned long		starget_data[0]; /* for the transport */
> +	unsigned long		starget_data[]; /* for the transport */
>  	/* starget_data must be the last element!!!! */
>  } __attribute__((aligned(sizeof(unsigned long))));
>  
> diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
> index 7a97fb8104cf..e6811ea8f984 100644
> --- a/include/scsi/scsi_host.h
> +++ b/include/scsi/scsi_host.h
> @@ -682,7 +682,7 @@ struct Scsi_Host {
>  	 * and also because some compilers (m68k) don't automatically force
>  	 * alignment to a long boundary.
>  	 */
> -	unsigned long hostdata[0]  /* Used for storage of host specific stuff */
> +	unsigned long hostdata[]  /* Used for storage of host specific stuff */
>  		__attribute__ ((aligned (sizeof(unsigned long))));
>  };
>  
> diff --git a/include/scsi/scsi_ioctl.h b/include/scsi/scsi_ioctl.h
> index 4fe69d863b5d..b465799f4d2d 100644
> --- a/include/scsi/scsi_ioctl.h
> +++ b/include/scsi/scsi_ioctl.h
> @@ -27,7 +27,7 @@ struct scsi_device;
>  typedef struct scsi_ioctl_command {
>  	unsigned int inlen;
>  	unsigned int outlen;
> -	unsigned char data[0];
> +	unsigned char data[];
>  } Scsi_Ioctl_Command;
>  
>  typedef struct scsi_idlun {
> diff --git a/include/scsi/srp.h b/include/scsi/srp.h
> index 9220758d5087..177d8026e96f 100644
> --- a/include/scsi/srp.h
> +++ b/include/scsi/srp.h
> @@ -109,7 +109,7 @@ struct srp_direct_buf {
>  struct srp_indirect_buf {
>  	struct srp_direct_buf	table_desc;
>  	__be32			len;
> -	struct srp_direct_buf	desc_list[0];
> +	struct srp_direct_buf	desc_list[];
>  } __attribute__((packed));
>  
>  /* Immediate data buffer descriptor as defined in SRP2. */
> @@ -244,7 +244,7 @@ struct srp_cmd {
>  	u8	reserved4;
>  	u8	add_cdb_len;
>  	u8	cdb[16];
> -	u8	add_data[0];
> +	u8	add_data[];
>  };
>  
>  enum {
> @@ -274,7 +274,7 @@ struct srp_rsp {
>  	__be32	data_in_res_cnt;
>  	__be32	sense_data_len;
>  	__be32	resp_data_len;
> -	u8	data[0];
> +	u8	data[];
>  } __attribute__((packed));
>  
>  struct srp_cred_req {
> @@ -306,7 +306,7 @@ struct srp_aer_req {
>  	struct scsi_lun	lun;
>  	__be32	sense_data_len;
>  	u32	reserved3;
> -	u8	sense_data[0];
> +	u8	sense_data[];
>  } __attribute__((packed));
>  
>  struct srp_aer_rsp {
> diff --git a/include/uapi/scsi/scsi_bsg_fc.h 
> b/include/uapi/scsi/scsi_bsg_fc.h
> index 3ae65e93235c..7f5930801f72 100644
> --- a/include/uapi/scsi/scsi_bsg_fc.h
> +++ b/include/uapi/scsi/scsi_bsg_fc.h
> @@ -209,7 +209,7 @@ struct fc_bsg_host_vendor {
>  	__u64 vendor_id;
>  
>  	/* start of vendor command area */
> -	__u32 vendor_cmd[0];
> +	__u32 vendor_cmd[];
>  };
>  
>  /* Response:
> -- 
> 2.25.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/20200224161406.GA21454%40embedde 
> dor.



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5E576F6F020000A1000373E1%40gwsmtp.uni-regensburg.de.
