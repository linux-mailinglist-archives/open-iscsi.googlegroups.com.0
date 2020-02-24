Return-Path: <open-iscsi+bncBAABBO4G3PZAKGQEK73BHGA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 7768D170897
	for <lists+open-iscsi@lfdr.de>; Wed, 26 Feb 2020 20:13:00 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id z15sf85843oto.16
        for <lists+open-iscsi@lfdr.de>; Wed, 26 Feb 2020 11:13:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582744379; cv=pass;
        d=google.com; s=arc-20160816;
        b=WjY24DA0n/p+QKiD9OjoPJZyU66wSpfHK7YxQSo41SBsWkvvLbfbp2AdZk/hIN/LLt
         lz22Sb+MAeZB8Z+DlBfF3Nqnfny78gBSCKOnvWmQIT+7l541RVtYvnNVh2je8gaztaVu
         cRQxks/J78Drt5vFiNJP2aJk4yB/zh6CBw7ior+7MVW2gjKgGaWJETctvUL6hJTN07P1
         VXArrpba4/0d3PA5I13lrfBwgcbXJTWEPBt1dvwPBS+lftSC63O9z200r5H84rqQr63m
         gDoRRSbiRDzYh0B8fCsaWAzY9NqhHs7W9VFNYvpNDgQFIDoGQ2cE6kcXsh3HNh6gdY7h
         fv/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=z0PIBBIDssyybYlkArZiVx4abdCEx+9SIt/pTk3ueAc=;
        b=nsbFF2HJyvqKtNV8z2THIgEADc0eUy0n33/R3AdY1DFvmSmRW2IOpVel6S/Vg5UQOM
         rmYVNOiF0TSYGAgRxZVTNLX7QDRCQyquqfqjRMYzkzO2/6T0BQjmKhLTVaHM3I2k+Nsq
         iMRQoGyXS0cP44xZGHj0duhwTY03KSzL8dBC5E47kdEOcEIklJexd6Ee9EQpehemg1hS
         wuNPOpNnumV2yFFj/28XWmraYA3ESLkY58Gzpmpxx3b+WTekprFdOkkTKUKQ4ZzPuKBX
         zvX3x8XvDP1y0gC/GLIfZzb4lQSER8m4+fCyVACkyiN7ZeyJWThTMUMG05di3AwjUzOx
         Jvcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=FdNeV6gs;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.51.202 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z0PIBBIDssyybYlkArZiVx4abdCEx+9SIt/pTk3ueAc=;
        b=k2bnWKYUO7WQAnb3RP1thQdaNbZsYptT3rR6jD7IKL+FoQ5XlT23HSIn0H4W4T9IhJ
         802uqSexHEYbGCpDXQS/doY7nnscCh8or90Un0YM0jO2RJxZpKxRkjhK+OQtckb5Rp3B
         t4p5TNJ3hawskgS66yfNU9SPhKAdyqSO5zYHt04jAUCnjC17idxnL+Fkv/uw4zCGkuiy
         nY2aC9ROgdeYZQHdDRWvxh4KCxZZMBYowqXC96pcr9AkrDXSlw9/GYHI7qfJ4UjCU0rl
         VNlj64spB+CEjx9DBNw/a74Wb1S71HjDeIoHH3IMauTXs2rTHWYs7jq5KhRVJRG2qSMk
         WtOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=z0PIBBIDssyybYlkArZiVx4abdCEx+9SIt/pTk3ueAc=;
        b=F5rUNMQIXDZXLYWzDVFsHdZ+VTdHfRBLpTA7mEXubbbdbzSvfJtkmYppRW3OnKUefL
         Wq6IVZeIOQ8m/3v+/WzmSY6ToM0OA5mLFqjGQRqP2/XGb/6guXS9eN6Z1EPK60XeVmRB
         WKXP4vkm8zHzwEOxxkVK7UNahipvXQZKDyCVDPwaKrGregBsql7YIy63RCff3+vcC4XL
         8V6uaZJ2qrIpW0h+P4/ZGM1McYdaftX9XtHeEXeU0pbxCM0LyN8do5ZuKjoomwOzANff
         Y2kGtf7+H0gClQQM6EGcYLNrNV5+4IHWDIppRBhLW2NH/nvlfcHFDTh0LJB23HX36KTn
         IhQg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXI9YMa+rOYrWmNzLvPQjzaDjHcoywuPzehYvoBizzYwOfErdFn
	kmWWMoEgEG5NERdEWEjDSnc=
X-Google-Smtp-Source: APXvYqy5T2vC8o0dP5ndbjfEqQ9oUlBlCuRwoC1qgn/gR9mc9fHrNOpIe4eEOdpWonlTi0aee10bcw==
X-Received: by 2002:a9d:116:: with SMTP id 22mr200883otu.149.1582744379224;
        Wed, 26 Feb 2020 11:12:59 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:3e15:: with SMTP id a21ls119210otd.8.gmail; Wed, 26 Feb
 2020 11:12:59 -0800 (PST)
X-Received: by 2002:a9d:443:: with SMTP id 61mr160445otc.357.1582744379010;
        Wed, 26 Feb 2020 11:12:59 -0800 (PST)
Received: by 2002:aca:6703:0:0:0:0:0 with SMTP id z3msoix;
        Mon, 24 Feb 2020 08:39:33 -0800 (PST)
X-Received: by 2002:a05:6830:110a:: with SMTP id w10mr41387513otq.300.1582562373102;
        Mon, 24 Feb 2020 08:39:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582562373; cv=none;
        d=google.com; s=arc-20160816;
        b=IfJjnnH0nChusf+8dc45ditIJnw4Lz3C6w6ssgczun7ZQDQpgQrdr++uzNAXEijOwM
         lCJ1Fb+FXi87yQ9bNrJ4NqMqSpSjcQBNwl2r48Y58CTQLSyb4zt2C+w9k2Z+hg4uUbb4
         72iVJuNAeijpPHh5uGnO0qJfZ3o413/M+BpgZCAdSnQGp+0t/1DsrNt3hAMpD5q9Cs20
         9cweR7XycjgIf85bOvjf+e27iGteSF59mReWChKMstxJI1eXMSNlIQg5hZ2AwaHtE025
         SwI6B0Ma+HNmyJaVIvytalB1CmTusVIuEo0L9PdkOwRG+uyR6xUu4GYYzkO0UTqClcAk
         pqJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=9MaTLdhyE2lqQeKKEie4NEqJq9AQ+rH9XoGJxwhMLV0=;
        b=GuBPVtIUnErmimR4vRJDsEZZ3GN0LfowrZOpffks3mZOE9Neoe/Jo1FHUXuw3jzCa2
         9e/c9Lku1BTsRaDhSZArJ/luIMPFivCIA8bgQMJlOtlsEtx4LI88Iz2oX3zXlQYOzGEa
         BvqhAFnoNFOLvhVlFcl+TuQnyG+FU7lGDN1yq1pZ+c9s5t9Y4PsWGfqLYXnl+kEayakV
         48ummyfApPJaPwh3pXq4YbGQPhN9A+3HB0YKGY44ltCUSsIymDFkdTx5uTHLP9IwknOV
         5vmQOeLXP817zRG8TCI479xH8MnVSdeaGxG6KFGUlqdmOTLGt55EcmYa8c4JoaRFoywq
         WxhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=FdNeV6gs;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.51.202 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com. [192.185.51.202])
        by gmr-mx.google.com with ESMTPS id s10si751561oth.2.2020.02.24.08.39.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Feb 2020 08:39:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.51.202 as permitted sender) client-ip=192.185.51.202;
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id D219E9A295
	for <open-iscsi@googlegroups.com>; Mon, 24 Feb 2020 10:39:32 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 6GlYjSK2y8vkB6GlYjNrvC; Mon, 24 Feb 2020 10:39:32 -0600
X-Authority-Reason: nr=8
Received: from [200.68.140.135] (port=33450 helo=[192.168.43.131])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1j6GlY-002tup-0H; Mon, 24 Feb 2020 10:39:32 -0600
Subject: Re: [PATCH] scsi: Replace zero-length array with flexible-array
 member
To: Lee Duncan <lduncan@suse.com>, Satish Kharat <satishkh@cisco.com>,
 Sesidhar Baddela <sebaddel@cisco.com>, Karan Tilak Kumar
 <kartilak@cisco.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Brian King <brking@us.ibm.com>,
 Intel SCU Linux support <intel-linux-scu@intel.com>,
 Artur Paszkiewicz <artur.paszkiewicz@intel.com>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Chaitra P B <chaitra.basappa@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 Chris Leech <cleech@redhat.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
 MPT-FusionLinux.pdl@broadcom.com, open-iscsi@googlegroups.com,
 linux-rdma@vger.kernel.org
References: <20200224161406.GA21454@embeddedor>
 <b44f60b7-3091-592e-b319-a929bcd19486@suse.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <026b4947-e38b-6d23-d330-414aebb19735@embeddedor.com>
Date: Mon, 24 Feb 2020 10:42:16 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b44f60b7-3091-592e-b319-a929bcd19486@suse.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.140.135
X-Source-L: No
X-Exim-ID: 1j6GlY-002tup-0H
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.131]) [200.68.140.135]:33450
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 84
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=FdNeV6gs;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.51.202 as
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



On 2/24/20 10:30, Lee Duncan wrote:
> On 2/24/20 8:14 AM, Gustavo A. R. Silva wrote:
>> The current codebase makes use of the zero-length array language
>> extension to the C90 standard, but the preferred mechanism to declare
>> variable-length types such as these ones is a flexible array member[1][2],
>> introduced in C99:
>>
>> struct foo {
>>         int stuff;
>>         struct boo array[];
>> };
>>
>> By making use of the mechanism above, we will get a compiler warning
>> in case the flexible array does not occur last in the structure, which
>> will help us prevent some kind of undefined behavior bugs from being
>> inadvertently introduced[3] to the codebase from now on.
>>
>> Also, notice that, dynamic memory allocations won't be affected by
>> this change:
>>
>> "Flexible array members have incomplete type, and so the sizeof operator
>> may not be applied. As a quirk of the original implementation of
>> zero-length arrays, sizeof evaluates to zero."[1]
>>
>> This issue was found with the help of Coccinelle.
>>
>> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
>> [2] https://github.com/KSPP/linux/issues/21
>> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>>
>> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
>> ---
>>  ...
>> diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
>> index 92b11c7e0b4f..b0e240b10bf9 100644
>> --- a/include/scsi/iscsi_if.h
>> +++ b/include/scsi/iscsi_if.h
>> @@ -311,7 +311,7 @@ enum iscsi_param_type {
>>  struct iscsi_param_info {
>>  	uint32_t len;		/* Actual length of the param value */
>>  	uint16_t param;		/* iscsi param */
>> -	uint8_t value[0];	/* length sized value follows */
>> +	uint8_t value[];	/* length sized value follows */
>>  } __packed;
>>  
>>  struct iscsi_iface_param_info {
>> @@ -320,7 +320,7 @@ struct iscsi_iface_param_info {
>>  	uint16_t param;		/* iscsi param value */
>>  	uint8_t iface_type;	/* IPv4 or IPv6 */
>>  	uint8_t param_type;	/* iscsi_param_type */
>> -	uint8_t value[0];	/* length sized value follows */
>> +	uint8_t value[];	/* length sized value follows */
>>  } __packed;
>>  
>>  /*
>> @@ -697,7 +697,7 @@ enum iscsi_flashnode_param {
>>  struct iscsi_flashnode_param_info {
>>  	uint32_t len;		/* Actual length of the param */
>>  	uint16_t param;		/* iscsi param value */
>> -	uint8_t value[0];	/* length sized value follows */
>> +	uint8_t value[];	/* length sized value follows */
>>  } __packed;
>>  
>>  enum iscsi_discovery_parent_type {
>> @@ -815,7 +815,7 @@ struct iscsi_stats {
>>  	 * up to ISCSI_STATS_CUSTOM_MAX
>>  	 */
>>  	uint32_t custom_length;
>> -	struct iscsi_stats_custom custom[0]
>> +	struct iscsi_stats_custom custom[]
>>  		__attribute__ ((aligned (sizeof(uint64_t))));
>>  };
>>  
>> @@ -946,7 +946,7 @@ struct iscsi_offload_host_stats {
>>  	 * up to ISCSI_HOST_STATS_CUSTOM_MAX
>>  	 */
>>  	uint32_t custom_length;
>> -	struct iscsi_host_stats_custom custom[0]
>> +	struct iscsi_host_stats_custom custom[]
>>  		__aligned(sizeof(uint64_t));
>>  };
>>  
>> diff --git a/include/scsi/scsi_bsg_iscsi.h b/include/scsi/scsi_bsg_iscsi.h
>> index fa0c820a1663..6b8128005af8 100644
>> --- a/include/scsi/scsi_bsg_iscsi.h
>> +++ b/include/scsi/scsi_bsg_iscsi.h
>> @@ -52,7 +52,7 @@ struct iscsi_bsg_host_vendor {
>>  	uint64_t vendor_id;
>>  
>>  	/* start of vendor command area */
>> -	uint32_t vendor_cmd[0];
>> +	uint32_t vendor_cmd[];
>>  };
>>  
>>  /* Response:
>> diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device.h
>> index f8312a3e5b42..4dc158cf09b8 100644
>> --- a/include/scsi/scsi_device.h
>> +++ b/include/scsi/scsi_device.h
>> @@ -231,7 +231,7 @@ struct scsi_device {
>>  	struct mutex		state_mutex;
>>  	enum scsi_device_state sdev_state;
>>  	struct task_struct	*quiesced_by;
>> -	unsigned long		sdev_data[0];
>> +	unsigned long		sdev_data[];
>>  } __attribute__((aligned(sizeof(unsigned long))));
>>  
>>  #define	to_scsi_device(d)	\
>> @@ -315,7 +315,7 @@ struct scsi_target {
>>  	char			scsi_level;
>>  	enum scsi_target_state	state;
>>  	void 			*hostdata; /* available to low-level driver */
>> -	unsigned long		starget_data[0]; /* for the transport */
>> +	unsigned long		starget_data[]; /* for the transport */
>>  	/* starget_data must be the last element!!!! */
>>  } __attribute__((aligned(sizeof(unsigned long))));
>>  
>> diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
>> index 7a97fb8104cf..e6811ea8f984 100644
>> --- a/include/scsi/scsi_host.h
>> +++ b/include/scsi/scsi_host.h
>> @@ -682,7 +682,7 @@ struct Scsi_Host {
>>  	 * and also because some compilers (m68k) don't automatically force
>>  	 * alignment to a long boundary.
>>  	 */
>> -	unsigned long hostdata[0]  /* Used for storage of host specific stuff */
>> +	unsigned long hostdata[]  /* Used for storage of host specific stuff */
>>  		__attribute__ ((aligned (sizeof(unsigned long))));
>>  };
>>  
>> diff --git a/include/scsi/scsi_ioctl.h b/include/scsi/scsi_ioctl.h
>> index 4fe69d863b5d..b465799f4d2d 100644
>> --- a/include/scsi/scsi_ioctl.h
>> +++ b/include/scsi/scsi_ioctl.h
>> @@ -27,7 +27,7 @@ struct scsi_device;
>>  typedef struct scsi_ioctl_command {
>>  	unsigned int inlen;
>>  	unsigned int outlen;
>> -	unsigned char data[0];
>> +	unsigned char data[];
>>  } Scsi_Ioctl_Command;
>>  
>>  typedef struct scsi_idlun {
>> diff --git a/include/scsi/srp.h b/include/scsi/srp.h
>> index 9220758d5087..177d8026e96f 100644
>> --- a/include/scsi/srp.h
>> +++ b/include/scsi/srp.h
>> @@ -109,7 +109,7 @@ struct srp_direct_buf {
>>  struct srp_indirect_buf {
>>  	struct srp_direct_buf	table_desc;
>>  	__be32			len;
>> -	struct srp_direct_buf	desc_list[0];
>> +	struct srp_direct_buf	desc_list[];
>>  } __attribute__((packed));
>>  
>>  /* Immediate data buffer descriptor as defined in SRP2. */
>> @@ -244,7 +244,7 @@ struct srp_cmd {
>>  	u8	reserved4;
>>  	u8	add_cdb_len;
>>  	u8	cdb[16];
>> -	u8	add_data[0];
>> +	u8	add_data[];
>>  };
>>  
>>  enum {
>> @@ -274,7 +274,7 @@ struct srp_rsp {
>>  	__be32	data_in_res_cnt;
>>  	__be32	sense_data_len;
>>  	__be32	resp_data_len;
>> -	u8	data[0];
>> +	u8	data[];
>>  } __attribute__((packed));
>>  
>>  struct srp_cred_req {
>> @@ -306,7 +306,7 @@ struct srp_aer_req {
>>  	struct scsi_lun	lun;
>>  	__be32	sense_data_len;
>>  	u32	reserved3;
>> -	u8	sense_data[0];
>> +	u8	sense_data[];
>>  } __attribute__((packed));
>>  
>>  struct srp_aer_rsp {
>> diff --git a/include/uapi/scsi/scsi_bsg_fc.h b/include/uapi/scsi/scsi_bsg_fc.h
>> index 3ae65e93235c..7f5930801f72 100644
>> --- a/include/uapi/scsi/scsi_bsg_fc.h
>> +++ b/include/uapi/scsi/scsi_bsg_fc.h
>> @@ -209,7 +209,7 @@ struct fc_bsg_host_vendor {
>>  	__u64 vendor_id;
>>  
>>  	/* start of vendor command area */
>> -	__u32 vendor_cmd[0];
>> +	__u32 vendor_cmd[];
>>  };
>>  
>>  /* Response:
>>
> 
> Reviewed-by: Lee Duncan <lduncan@suse.com>
> 

Thanks, Lee.

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/026b4947-e38b-6d23-d330-414aebb19735%40embeddedor.com.
