Return-Path: <open-iscsi+bncBDGIZD433YCRB67AQCUQMGQEEFI625Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 389D07BBC70
	for <lists+open-iscsi@lfdr.de>; Fri,  6 Oct 2023 18:06:22 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id 6a1803df08f44-66ac99ce80esf22889116d6.1
        for <lists+open-iscsi@lfdr.de>; Fri, 06 Oct 2023 09:06:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696608381; cv=pass;
        d=google.com; s=arc-20160816;
        b=fAZN8opaRTBuVehNE+iSLiu1JluXeN7pf/gcI3JRuZlAovpI4LpA1AoEk9Zkgb7SJp
         BJwDYPaNbpbsw1RaqL6Gn0W7u9dG/R66ATbgCS8h593REoKctcV7BjNWhrR9mrofduNP
         +e6nO4Ka+dA51eSPQPd2m6OezwJOiqQI8B2BoJYXHWsyHhZN6hHKuqo0i/6+sfapBRRr
         jnboksqgKAUkr4xJGS0keY3wt5NWYEtUnEUSozIBquGwFMuU8P8uTnDGH/HXTB+ecO8H
         gHaZuLf2F4l1KJLY8cT7pP2a6s5OqD8YHTvIUppi0By5GXU6MOh4WewmIG2j62Tp9qk1
         Fp+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:sender:dkim-signature;
        bh=2n+lym8X07bKVoogMLt2gT7QxuKfTBGWR0NawzJvzoU=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=FHOI5IvSubG4y0JSDxLv3nfmLt8eIUZGHVwE9RBgJ5FGrSOXFwv/0E7Dvpox8hyELp
         zAfEv6+In7qXDyvPJ+utN2+EINC98pXI45LoEDL5VQnU6lST9Y/y4JjESLnv+fdsMWxl
         ou6kM+wa02MfQxWGuMIopGSmzg2Jv68+N9ujug1L6ZfHGPMlQ1K18azTB27Oako0pjA/
         BDX7DXDIUIEsBoTUDa83pIDBSgOK4lYqoZukYtaSdWJw3YyjZlEOXZkDDyuw8cfkeikD
         4kIsKX0CPxHj5yvvWP+sx+x9A1lqgFIM32CeRCzQRLSL06Sev8SttRZx+0z/JMSwn+So
         +9hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as permitted sender) smtp.mailfrom=dgilbert@interlog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1696608381; x=1697213181; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:reply-to:user-agent:mime-version:date:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2n+lym8X07bKVoogMLt2gT7QxuKfTBGWR0NawzJvzoU=;
        b=PUuxIGvBEVe+leiGR9wiY5O1qdRqNplJ8g48d/9iEK50XRCoOl6TpA6nso8cGyr9/7
         m1LI3v824ayrV9qouq6Okehh+B5LUVE2P/QEnFvvbJKk/ZPXudLocyl9n753l7U+P9Pz
         Lq6uPqq+OSUADHA9M4pcNME9rya+dhVaiQkPxoXOd40zXDaWMb37dc2pFUm4XQ/fF+w4
         8zVetMDb1b3JaA6OHOxfBwDIFrF3KcpmQddLlbTwZHibRtRg6a2fFM0HFObfwg3x11EJ
         WvUzpo+qP1Qzq24/M2yUvdqWfLDIfEI2OXERENyUwse3L5VDKduUngV1f4eq7em1rt9b
         8QqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696608381; x=1697213181;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2n+lym8X07bKVoogMLt2gT7QxuKfTBGWR0NawzJvzoU=;
        b=vCyjW5rvWiv1A0+wQjLiKlozjveVXv6GY0mYWSQ6wOjxMsWjfkdnrsbZOtjmK2a85H
         v0AUZ9KuOkdaA3EWKDWM9L8ykvX6qiMq9auZVO5tqCPSO7V0VNahMccvtu/mw0AMm+Z+
         zhCe44+BtOT+jq+2KQ5Up7Q+EisXh5I19qMaesUjRj/v5vEC5iIDc2rzFvYL94Hc6KwQ
         e2WLhIo1HW9HTDJob1N3z0Pu5UDF3xRigz3EGylQKDLUnN5QsjtVBE/kP1/+AEtB9Fz5
         XqBL0Kodfz4LDdE7eNdOWI3KsMsikC2z0yTKZldHNxBtZ5dly76dkEq6dHD3ZjPifnbj
         flRg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0Yzb1vUH/Fnu9VuZ9V/WBJcUongTgz0t9z/f5XdEQFe41nffMjQ7
	oWoIQS53pChcAPSJ9rAaqpo=
X-Google-Smtp-Source: AGHT+IF92XesnEMYO13fhm3thVgClkDCgTOV7PweMvEMIgkv1EImc2wWbgIqdaO/q+m1JIsDMnkrRw==
X-Received: by 2002:a0c:de04:0:b0:65a:2d16:c2 with SMTP id t4-20020a0cde04000000b0065a2d1600c2mr8371623qvk.46.1696608380796;
        Fri, 06 Oct 2023 09:06:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:db04:0:b0:65a:fea4:8eed with SMTP id d4-20020a0cdb04000000b0065afea48eedls2044583qvk.2.-pod-prod-07-us;
 Fri, 06 Oct 2023 09:06:18 -0700 (PDT)
X-Received: by 2002:a67:f5cb:0:b0:44d:5435:a3f with SMTP id t11-20020a67f5cb000000b0044d54350a3fmr8053338vso.29.1696608378294;
        Fri, 06 Oct 2023 09:06:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696608378; cv=none;
        d=google.com; s=arc-20160816;
        b=XmwRR2EhF1IJ83nTYRj9bG8ca6wCdsvRSE2gE8I1V5Q/RPXIhr7tQZ8pFC02do60T1
         x4JFK/MGKg2AgZz0DcyheJr+2n64S/C7jHHiR9dan5hclYGzowpfa3FLnbCSAQpcZho+
         6MkTHgscWLF/iW9O6rqIe9kGsub91bV51GxtKVJxoGK4wK19NAu9xoaUHDZiunOW5prr
         viiWA2giw0/MLPjFTbYWalDQedesVnlsT+z7zh8EY1Y8ZrtaLjeFEnWMG1qXTt9uNwYt
         fMt9Vg3xk3BFHBCbJT+paX9hkN/T4WI01NkCWI98yqV4utJUyJz2O44K8I4346DOPYt7
         dEbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id;
        bh=8u/HTZWaOS+hiZdD7UT2LjW5P8SCs51OtwBtGDuNJYM=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=KnGEJIzDn+r24aqZfIjhX7q+42SnGLZ9m81HWltKHqEd3sIbw8aU7wNv2hdaraL8jU
         zLWVkyDKhYkKNQymXaMtHqhmq/zXeGzsojRDfGwht4FGjQ9OFrGk8ERPKZWY3o5pNdWF
         PV5dHOlSa/Xbeiv9giU+fHSEDszhFNfrB1WAdqRwAZKch2OrYXiGvubCCxaKMhKscPTV
         0RKhEecHe6Nzl6tK1cSsf3jFHOsyZ2Tw2LWdD/91QCrKf7iXVf8e6PV0cAvkm4+6EmPz
         ZMMJvR7omD1gVpFR3L96xV6l8h3dtUr36KcHRIayIlfZxI7EX52JdhxwoGN9sK5srNGn
         nkqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as permitted sender) smtp.mailfrom=dgilbert@interlog.com
Received: from mp-relay-02.fibernetics.ca (mp-relay-02.fibernetics.ca. [208.85.217.137])
        by gmr-mx.google.com with ESMTPS id d17-20020a056102149100b0045258d13d6esi902494vsv.2.2023.10.06.09.06.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 09:06:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as permitted sender) client-ip=208.85.217.137;
Received: from mailpool-fe-02.fibernetics.ca (mailpool-fe-02.fibernetics.ca [208.85.217.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mp-relay-02.fibernetics.ca (Postfix) with ESMTPS id B4E5975C23;
	Fri,  6 Oct 2023 16:06:17 +0000 (UTC)
Received: from localhost (mailpool-mx-01.fibernetics.ca [208.85.217.140])
	by mailpool-fe-02.fibernetics.ca (Postfix) with ESMTP id 9CA07609E6;
	Fri,  6 Oct 2023 16:06:17 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at
X-Spam-Flag: NO
X-Spam-Score: -0.199
X-Spam-Level: 
X-Spam-Status: No, score=-0.199 tagged_above=-999 required=5
	tests=[ALL_TRUSTED=-1, BAYES_50=0.8, URIBL_BLOCKED=0.001]
	autolearn=no autolearn_force=no
Received: from mailpool-fe-02.fibernetics.ca ([208.85.217.145])
	by localhost (mail-mx-01.fibernetics.ca [208.85.217.140]) (amavisd-new, port 10024)
	with ESMTP id KjewNH7qp8jC; Fri,  6 Oct 2023 16:06:15 +0000 (UTC)
Received: from [192.168.48.17] (host-104-157-209-188.dyn.295.ca [104.157.209.188])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dgilbert@interlog.com)
	by mail.ca.inter.net (Postfix) with ESMTPSA id D05BD6091D;
	Fri,  6 Oct 2023 16:06:14 +0000 (UTC)
Message-ID: <8c48129a-1afe-4189-a1f8-3c60e2375ad2@interlog.com>
Date: Fri, 6 Oct 2023 12:06:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: open-iscsi@googlegroups.com
Subject: Re: [PATCH v5 07/10] scsi: scsi_debug: Add new error injection abort
 failed
To: Wenchao Hao <haowenchao2@huawei.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, louhongxiang@huawei.com
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
 <20230922092906.2645265-8-haowenchao2@huawei.com>
Content-Language: en-CA
From: Douglas Gilbert <dgilbert@interlog.com>
In-Reply-To: <20230922092906.2645265-8-haowenchao2@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dgilbert@interlog.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as
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
> Add error injection type 3 to make scsi_debug_abort() return FAILED.
> Fail abort command foramt:

s/foramt/format/

> 
>    +--------+------+-------------------------------------------------------+
>    | Column | Type | Description                                           |
>    +--------+------+-------------------------------------------------------+
>    |   1    |  u8  | Error type, fixed to 0x3                              |
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
> will make the device return FAILED when abort inquiry command 10 times.

Tested with:
    # sg_raw -t 10 -r 1k /dev/sg1 12 00 00 00 60 00

After 10 seconds (the timeout specified to sg_raw) I saw this:
    >>> transport error: Host_status=0x03 [DID_TIME_OUT]

And the
     # cat /sys/kernel/debug/scsi_debug/1\:0\:0\:0/error

Count value changed from -10 up to 0 for each invocation of the INQUIRY
command. Thereafter the INQUIRY command worked.

Looks good.

   Tested-by: Douglas Gilbert <dgilbert@interlog.com>

> 
> Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
> ---
>   drivers/scsi/scsi_debug.c | 40 +++++++++++++++++++++++++++++++++++++++
>   1 file changed, 40 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
> index fe1f7421f617..8a16cb9642a6 100644
> --- a/drivers/scsi/scsi_debug.c
> +++ b/drivers/scsi/scsi_debug.c
> @@ -293,6 +293,8 @@ enum sdebug_err_type {
>   	ERR_FAIL_CMD		= 2,	/* make specific scsi command's */
>   					/* queuecmd return succeed but */
>   					/* with errors set in scsi_cmnd */
> +	ERR_ABORT_CMD_FAILED	= 3,	/* control return FAILED from */
> +					/* scsi_debug_abort() */
>   };
>   
>   struct sdebug_err_inject {
> @@ -970,6 +972,7 @@ static int sdebug_error_show(struct seq_file *m, void *p)
>   	list_for_each_entry_rcu(err, &devip->inject_err_list, list) {
>   		switch (err->type) {
>   		case ERR_TMOUT_CMD:
> +		case ERR_ABORT_CMD_FAILED:
>   			seq_printf(m, "%d\t%d\t0x%x\n", err->type, err->cnt,
>   				err->cmd);
>   		break;
> @@ -1031,6 +1034,7 @@ static ssize_t sdebug_error_write(struct file *file, const char __user *ubuf,
>   
>   	switch (inject_type) {
>   	case ERR_TMOUT_CMD:
> +	case ERR_ABORT_CMD_FAILED:
>   		if (sscanf(buf, "%d %d %hhx", &inject->type, &inject->cnt,
>   			   &inject->cmd) != 3)
>   			goto out_error;
> @@ -5504,9 +5508,39 @@ static void stop_all_queued(void)
>   	mutex_unlock(&sdebug_host_list_mutex);
>   }
>   
> +static int sdebug_fail_abort(struct scsi_cmnd *cmnd)
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
> +		if (err->type == ERR_ABORT_CMD_FAILED &&
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
>   static int scsi_debug_abort(struct scsi_cmnd *SCpnt)
>   {
>   	bool ok = scsi_debug_abort_cmnd(SCpnt);
> +	u8 *cmd = SCpnt->cmnd;
> +	u8 opcode = cmd[0];
>   
>   	++num_aborts;
>   
> @@ -5515,6 +5549,12 @@ static int scsi_debug_abort(struct scsi_cmnd *SCpnt)
>   			    "%s: command%s found\n", __func__,
>   			    ok ? "" : " not");
>   
> +	if (sdebug_fail_abort(SCpnt)) {
> +		scmd_printk(KERN_INFO, SCpnt, "fail abort command 0x%x\n",
> +			    opcode);
> +		return FAILED;
> +	}
> +
>   	return SUCCESS;
>   }
>   

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8c48129a-1afe-4189-a1f8-3c60e2375ad2%40interlog.com.
