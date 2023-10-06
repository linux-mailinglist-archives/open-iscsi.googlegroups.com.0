Return-Path: <open-iscsi+bncBDGIZD433YCRBZHMQGUQMGQEYEVJ2TQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 738E17BC0EA
	for <lists+open-iscsi@lfdr.de>; Fri,  6 Oct 2023 23:04:39 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 46e09a7af769-6c626bfcd3fsf3130026a34.3
        for <lists+open-iscsi@lfdr.de>; Fri, 06 Oct 2023 14:04:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696626278; cv=pass;
        d=google.com; s=arc-20160816;
        b=DOAQldR189u5HS5QCDisUtFoPx7PtNB7K8QwWN0pTWXuVZvlwOD4If9BbsIFsVunuj
         ckZrLK5utOl5qFK6cL5W2NuEUnpWm66wC8TG3/EP8g73f0e6YEXxmVMaZyUMacIOPEs5
         lkseur5YmimDqavpnjJOeJdkdipktQ7udma/8Gr2BDybleqd77Lr5xnNC4pqJTpvEB60
         ahNoYrJgF5Qr5MF2SJ1MRCtYcV/KypxUpq6+Z8kp8UuBgqNZXsTrmk64/4b7RtKTDTYf
         lNoAS0IoB8xfuhKixOBPBIbMCQS1nkk2oahAFOg4F8enuUPQqV2gKd2z8hM6QCw6QWu1
         IHbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:sender:dkim-signature;
        bh=VU9UtwEeNZZt4YHRF7yqnvwogcsbCxGUJWAYWuPV+84=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=W95df4RwazpC4OPjJmZt4l46m7odKb/OVeIYqU7BuCZgkxAIN1rWiqxEJkQ9NyRrF0
         52vL4/QO3vw0kHeOALi5x5YAGQmJV+fzoBJdv9Xb8+6d+gSbP42SwvRgrPtfRZNpFa4J
         9Po2UvGAr2jdXj+Lhkl2wfcr5LgsPI1qbMUvKbNIY01bBaP2dXG/aJnFVcHLjHpIDalE
         S6u8Otd9olk7s6Zz0ycnGAPOoDEYqI0f7dQ5SVK8gJYTdJdP+Dqw1om9TIkPHjkpS+tV
         h90Kyk9bRQvgCQ0+v9LvjVXdcBHxJwN2SCk3i7buhy3WvMZSwGdSazc/0f2LUYKG4w+d
         F21g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.136 as permitted sender) smtp.mailfrom=dgilbert@interlog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1696626278; x=1697231078; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:reply-to:user-agent:mime-version:date:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VU9UtwEeNZZt4YHRF7yqnvwogcsbCxGUJWAYWuPV+84=;
        b=ud6Mu4+tUf8fJP8i3uF8q5yq9+rFlZc9IrK5BmBODi4Lgxq6iIePrmD28O1XZ8w93Q
         ZtACkttPrkhbD6TNdJw6dasdrwgiCrKt99D06WOYMMW1PTdllXq6oA+YOBlwmVKaQVDU
         ng/0VPOm5Rc9wCrM4WholWAYbtw09NtbuHZRqDGiuh+u4Q3N0AwcSM6m9VYYl3n6FsUO
         VNoVxuVAya+lol91990QWF4HHJZQgEx+Q52poX+uv7oIisAHjPMd1zEEFhbXHAFK0ak6
         IJQ0lR35qEySgxldPobrvNMsG5YwBeHgPF8vWEaWwi7P0jD6z3A5OBH++IQ6gmsafMiW
         QqAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696626278; x=1697231078;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VU9UtwEeNZZt4YHRF7yqnvwogcsbCxGUJWAYWuPV+84=;
        b=oDpEq0FY1NgOImp8O4CGQgmkMboIF4/bR+O0TvTR5LF7a4/UXRHceU/Wfqp/Jg80Cn
         6oYOinOfVx88Uqcwh9PyqG+fCnP4AtJ9uMvOt5J8kZ+UmvzCm1J/DVxRwavwzTHPYcnr
         x85CczUBjRmMT4ukK//wKz+mfh3/3WjC5QBdxxhqSkC/a3pDbEshx9uRJxd4eWoF6M9E
         zcYTUQOCFmB5NIzMK7gdK+uUBNsS/lMWjFs5gWKm6dYIeGD7NKZiW0svv1agiD+P2tPV
         lR0bvJoif/R/6FaRpeQ2o/4IGkTMzHCDdySgVKa6L4BTppS+MxDaxOp5F1Z5LUwsrjlq
         WB7Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YyvBoXDrHLerrd9t0Bq0xS6Ehw1Ix87JsoKfcdCLzNPtG1zsB65
	M3FCcD+ta7x2moLoGXuX7Bk=
X-Google-Smtp-Source: AGHT+IEomzUvlpaNhWXzq31f1dWQQkJt7MifswFXAZBxSwZAlaLV78AE/FClo+Jb2aNPZfCGyIq6GA==
X-Received: by 2002:a05:6830:59:b0:6b9:b600:536 with SMTP id d25-20020a056830005900b006b9b6000536mr9372954otp.27.1696626278182;
        Fri, 06 Oct 2023 14:04:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:5101:0:b0:57b:6a17:53f6 with SMTP id s1-20020a4a5101000000b0057b6a1753f6ls736280ooa.1.-pod-prod-06-us;
 Fri, 06 Oct 2023 14:04:35 -0700 (PDT)
X-Received: by 2002:a05:6808:10ce:b0:3ab:83fe:e182 with SMTP id s14-20020a05680810ce00b003ab83fee182mr11174394ois.1.1696626275748;
        Fri, 06 Oct 2023 14:04:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696626275; cv=none;
        d=google.com; s=arc-20160816;
        b=tkVG72yjuwH8Q6MGs3JGiG4mhDEosJEABxMJtcPDN2EpttN7OlY6PxTDsXFuasWmhz
         hlyUH/qX3mj+YF69dhhKkFt+aOluXPdWpSuyyXWUrPY5VYeHWtQZApAkjWMydRbKl2Ky
         8YBc0bg2bxaS8Di2ALkZeVk8OXnu9ZOlHkCYSV7pLEIrZOjDQ8JIGyPfUBM3yESEDUmf
         hoq1AxfMOE0w0CFvpvnE4a8G8XBR9zgTh4OiMbu06Vbg/CoWaWcgsVUe/7eE3gHJFUr8
         2lUUOvkYIS1myY8SFowIz0zB8x+39XJj7wnR6axaITb2pfQaJCKXqpmBgE/rEZXRAs57
         OV8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id;
        bh=yj43vwptagfwvCdfkzoN17PBrKYRHeh0WSweT/AmTjk=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=ztqu02VVlMWCgkhUtkLYZKQzU428S60003YDEzgsiA3NZD2JtUrl9O4Il7LYjTMg2p
         ofAdl/y/fYaocO5ZUkipAikqfwODgro1uiNSu60r6zYEEy51D4eTMQFoy/GhFWOynoSS
         BQkxYiLWoY1Nybg0HOM0AcoaQ9nosiyfL/WpkI1uittEX0mGjfRbfu7JH7hhxoijq4Xx
         CxVzqrBVYk4g2ySHCD5iW5frsJN75PdqV7nEsk8xz1UVH0Pu/pVjFqbfizy1BeapDUu/
         CkV9jgxfDuH8vQCP2jptFmD4UBmLHjpEOH9Qv48bV8lBhEp+jnBeI7FlHG5WnZRm5J3s
         +KSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.136 as permitted sender) smtp.mailfrom=dgilbert@interlog.com
Received: from mp-relay-01.fibernetics.ca (mp-relay-01.fibernetics.ca. [208.85.217.136])
        by gmr-mx.google.com with ESMTPS id gq17-20020a056808399100b003adc07017bfsi429727oib.3.2023.10.06.14.04.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 14:04:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.136 as permitted sender) client-ip=208.85.217.136;
Received: from mailpool-fe-02.fibernetics.ca (mailpool-fe-02.fibernetics.ca [208.85.217.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mp-relay-01.fibernetics.ca (Postfix) with ESMTPS id A30AAE179C;
	Fri,  6 Oct 2023 21:04:34 +0000 (UTC)
Received: from localhost (mailpool-mx-02.fibernetics.ca [208.85.217.141])
	by mailpool-fe-02.fibernetics.ca (Postfix) with ESMTP id 89C6C60BBD;
	Fri,  6 Oct 2023 21:04:34 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at
X-Spam-Flag: NO
X-Spam-Score: -0.199
X-Spam-Level: 
X-Spam-Status: No, score=-0.199 tagged_above=-999 required=5
	tests=[ALL_TRUSTED=-1, BAYES_50=0.8, URIBL_BLOCKED=0.001]
	autolearn=no autolearn_force=no
Received: from mailpool-fe-02.fibernetics.ca ([208.85.217.145])
	by localhost (mail-mx-02.fibernetics.ca [208.85.217.141]) (amavisd-new, port 10024)
	with ESMTP id zZQtcZxEEU-n; Fri,  6 Oct 2023 21:04:33 +0000 (UTC)
Received: from [192.168.2.19] (lnsm3-torontoxn-142-116-140-195.internet.virginmobile.ca [142.116.140.195])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dgilbert@interlog.com)
	by mail.ca.inter.net (Postfix) with ESMTPSA id CB7066091D;
	Fri,  6 Oct 2023 21:04:32 +0000 (UTC)
Message-ID: <fd68ba92-7736-4924-945e-4bb238a02860@interlog.com>
Date: Fri, 6 Oct 2023 17:04:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: open-iscsi@googlegroups.com
Subject: Re: [PATCH v5 08/10] scsi: scsi_debug: Add new error injection reset
 lun failed
To: Wenchao Hao <haowenchao2@huawei.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, louhongxiang@huawei.com
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
 <20230922092906.2645265-9-haowenchao2@huawei.com>
Content-Language: en-CA
From: Douglas Gilbert <dgilbert@interlog.com>
In-Reply-To: <20230922092906.2645265-9-haowenchao2@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dgilbert@interlog.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dgilbert@interlog.com designates 208.85.217.136 as
 permitted sender) smtp.mailfrom=dgilbert@interlog.com
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

On 2023-09-22 05:29, Wenchao Hao wrote:
> Add error injection type 3 to make scsi_debug_device_reset() return FAILED.
> Fail abort command foramt:

s/foramt/format/

> 
>    +--------+------+-------------------------------------------------------+
>    | Column | Type | Description                                           |
>    +--------+------+-------------------------------------------------------+
>    |   1    |  u8  | Error type, fixed to 0x4                              |
>    +--------+------+-------------------------------------------------------+
>    |   2    |  s32 | Error count                                           |
>    |        |      |  0: this rule will be ignored                         |
>    |        |      |  positive: the rule will always take effect           |
>    |        |      |  negative: the rule takes effect n times where -n is  |
>    |        |      |            the value given. Ignored after n times     |
>    +--------+------+-------------------------------------------------------+
>    |   3    |  x8  | SCSI command opcode, 0xff for all commands            |
>    +--------+------+-------------------------------------------------------+
> 
> Examples:
>      error=/sys/kernel/debug/scsi_debug/0:0:0:1/error
>      echo "0 -10 0x12" > ${error}

These examples are misleading. Same with the one in patch 7/10 . The example
should be showing an invocation that exercises _this_ patch. So the first
byte of the echo should be 4 not the 0 shown above.

Doug Gilbert

> will make the device return FAILED when try to reset lun with inquiry
> command 10 times.
>      error=/sys/kernel/debug/scsi_debug/0:0:0:1/error
>      echo "0 -10 0xff" > ${error}
> will make the device return FAILED when try to reset lun 10 times.
> 
> Usually we do not care about what command it is when trying to perform
> reset LUN, so 0xff could be applied.
> 
> Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
> ---
>   drivers/scsi/scsi_debug.c | 39 +++++++++++++++++++++++++++++++++++++++
>   1 file changed, 39 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
> index 8a16cb9642a6..db8ab6cad078 100644
> --- a/drivers/scsi/scsi_debug.c
> +++ b/drivers/scsi/scsi_debug.c
> @@ -295,6 +295,8 @@ enum sdebug_err_type {
>   					/* with errors set in scsi_cmnd */
>   	ERR_ABORT_CMD_FAILED	= 3,	/* control return FAILED from */
>   					/* scsi_debug_abort() */
> +	ERR_LUN_RESET_FAILED	= 4,	/* control return FAILED from */
> +					/* scsi_debug_device_reseLUN_RESET_FAILEDt() */
>   };
>   
>   struct sdebug_err_inject {
> @@ -973,6 +975,7 @@ static int sdebug_error_show(struct seq_file *m, void *p)
>   		switch (err->type) {
>   		case ERR_TMOUT_CMD:
>   		case ERR_ABORT_CMD_FAILED:
> +		case ERR_LUN_RESET_FAILED:
>   			seq_printf(m, "%d\t%d\t0x%x\n", err->type, err->cnt,
>   				err->cmd);
>   		break;
> @@ -1035,6 +1038,7 @@ static ssize_t sdebug_error_write(struct file *file, const char __user *ubuf,
>   	switch (inject_type) {
>   	case ERR_TMOUT_CMD:
>   	case ERR_ABORT_CMD_FAILED:
> +	case ERR_LUN_RESET_FAILED:
>   		if (sscanf(buf, "%d %d %hhx", &inject->type, &inject->cnt,
>   			   &inject->cmd) != 3)
>   			goto out_error;
> @@ -5578,10 +5582,40 @@ static void scsi_debug_stop_all_queued(struct scsi_device *sdp)
>   				scsi_debug_stop_all_queued_iter, sdp);
>   }
>   
> +static int sdebug_fail_lun_reset(struct scsi_cmnd *cmnd)
> +{
> +	struct scsi_device *sdp = cmnd->device;
> +	struct sdebug_dev_info *devip = (struct sdebug_dev_info *)sdp->hostdata;
> +	struct sdebug_err_inject *err;
> +	unsigned char *cmd = cmnd->cmnd;
> +	int ret = 0;
> +
> +	if (devip == NULL)
> +		return 0;
> +
> +	rcu_read_lock();
> +	list_for_each_entry_rcu(err, &devip->inject_err_list, list) {
> +		if (err->type == ERR_LUN_RESET_FAILED &&
> +		    (err->cmd == cmd[0] || err->cmd == 0xff)) {
> +			ret = !!err->cnt;
> +			if (err->cnt < 0)
> +				err->cnt++;
> +
> +			rcu_read_unlock();
> +			return ret;
> +		}
> +	}
> +	rcu_read_unlock();
> +
> +	return 0;
> +}
> +
>   static int scsi_debug_device_reset(struct scsi_cmnd *SCpnt)
>   {
>   	struct scsi_device *sdp = SCpnt->device;
>   	struct sdebug_dev_info *devip = sdp->hostdata;
> +	u8 *cmd = SCpnt->cmnd;
> +	u8 opcode = cmd[0];
>   
>   	++num_dev_resets;
>   
> @@ -5592,6 +5626,11 @@ static int scsi_debug_device_reset(struct scsi_cmnd *SCpnt)
>   	if (devip)
>   		set_bit(SDEBUG_UA_POR, devip->uas_bm);
>   
> +	if (sdebug_fail_lun_reset(SCpnt)) {
> +		scmd_printk(KERN_INFO, SCpnt, "fail lun reset 0x%x\n", opcode);
> +		return FAILED;
> +	}
> +
>   	return SUCCESS;
>   }
>   

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/fd68ba92-7736-4924-945e-4bb238a02860%40interlog.com.
