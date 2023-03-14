Return-Path: <open-iscsi+bncBCHZVHVFVMARB2GBYKQAMGQEOGXPWYQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA136B9B73
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 17:29:30 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id g21-20020a2e9cd5000000b00295cbacaf20sf4788740ljj.14
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 09:29:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678811370; cv=pass;
        d=google.com; s=arc-20160816;
        b=G6cuzG0pAr320a9uroZiM6o8LNTNtqfSTXjKu4ECoHwEsz4IID2TtEX6MM1i809y5L
         O1GW9cUD6jPXgh9RnGf4yQWf121vLuWzAeb4LT1+vv1H71LDjTHqH/GgyatJxrFwwtTI
         /UF7Mq9haZBSfe972s1+hi8Zf86WZ/ddhzPuom2a3qzOY2IFEbtejKmFNlOpLilzaVkw
         uJ6JmMCGzrZJcTB1d4w2dW9w+LjHhZhDa7aoXR5UXSpPdDrbe59Bn4CWUUEFY7TU9Uly
         Y7MALf1fV5qAEyb7eeautUfmG0UyJj+7BetKJyduT43RGh6O7UVi86tz1tpinl7CDtX1
         fCyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=I+LG3Qp9j8ooKf8OupJTBnjq1Na2QODFza6f9n/SOII=;
        b=BI/nXr/ByVXlvQ+GvahJYgL58l3gaxFUAxaHZ2Mo8oe7ML2LVuASkI/7mx4lt4WS43
         EF4IcfzCCRq2oZUJD428fHpgUgBZPe8VAlSnk5I4BtktCX2F4Kvr7o2JsUzjHOpB4H+m
         TwDej6WXYdC+3/OhyAtg1J2iY9mncbAJHJgg0c0uztITadFUh3Zxejwr5uZihN9OAnw2
         hrtd5pN9w7Vmv/aqLehyCtXzuwdwpjQuvU/L0VtOOWQgwIPbtEqzJndVAuKdJTEMy0va
         50hRU9yFE5GOCWK8q/quwPq8H3uPpY7w521G/kIwCDfucqLGAlCt38KaZP1fgxO2CaXP
         90lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="1/QYBdJE";
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678811370;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+LG3Qp9j8ooKf8OupJTBnjq1Na2QODFza6f9n/SOII=;
        b=WINIl+Njt7RXWjr/ygmJpfvdpUv6khfXdO2Sb4gdW/MmwhSbTLvlmRiSn09zkp5qkq
         MM3mof0jHDXU5uF6jGBQwf4b0r4vxQGI0jSJZ3NMcYImQERbiLS8sZVAr4+9P56E+Vgp
         6ojy6uF7y2IEo7QCU+yjSYt5FT3BflVVY/p/CwMsAegIZEtYC4AgRW/9IX/e+Jp2WufF
         9QUK5i/b4inHBWR0oe/YZy5KSL4iuIpZQDGhddq5N6zRF9myfDY3U5GqrIg16gtU0wvy
         PD7aDoX5NxvdAZTcccTGWNKQOtHsdphtXnoqnrTshHAhAUOmQ25KJ1DmQOawhMqmg9m3
         rdzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678811370;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I+LG3Qp9j8ooKf8OupJTBnjq1Na2QODFza6f9n/SOII=;
        b=nymBnJFrjf3OeT1sRl39BpHZvLgMCqNrvLf6SSUdfYXzfW1uVnTqtRFvnLJr4DPlKB
         fl1KqofM7cAHfy7EZOBMY968qY4DziIfg9lwO2A6rvxYsijoET2nQT25PDsfj07cSnUh
         g23xddeDqaWG267XXbX1TgNrNZLmh7COOdahsvH2zfxk+Y2XsMd9PnLl0+oYKDUCZ6Mm
         zcEaGekAEXm0RJ24i+f4nXMzOJfVtdJ1zgpvUIJN0HO5oR1N2ssm1mkg7/0Sv5ZI4VK3
         313Yupzb91MFP06jvXKJIgUoBYENM9D5BqUsrT4KjcXBNyUNlAePS2wPGUhKu9/vHjqu
         fCBA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKUfyj1SzUxtKYOhnCkreE3v5TKW3Mjq/AUzVLfumJ1BFSGiTimm
	E0NTOLNmMITH9bzEUjz5hr4=
X-Google-Smtp-Source: AK7set+8P4w5RE5lge3feV7gpUV8k6sZKMswZ1ZVsnp3zeqAgjG0XI7FteeW08/vnE3yJSLXoen1kw==
X-Received: by 2002:a05:6512:11e4:b0:4db:5133:59a6 with SMTP id p4-20020a05651211e400b004db513359a6mr897774lfs.13.1678811369759;
        Tue, 14 Mar 2023 09:29:29 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:1615:b0:298:699a:b764 with SMTP id
 f21-20020a05651c161500b00298699ab764ls2762269ljq.9.-pod-prod-gmail; Tue, 14
 Mar 2023 09:29:27 -0700 (PDT)
X-Received: by 2002:a2e:9ad7:0:b0:298:9c6f:4fb8 with SMTP id p23-20020a2e9ad7000000b002989c6f4fb8mr1035638ljj.21.1678811367020;
        Tue, 14 Mar 2023 09:29:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678811367; cv=none;
        d=google.com; s=arc-20160816;
        b=05iXAYE6v5RVQqfRyaAiv3tZumfhLkguSFVJfdFOrQjhSKxJZixOuOtaGADWRNMULx
         webcZuPGicIXUVNcKxHxE6DObP/aIJ68Rn70Md9MirCuFL0yIIlk2pMkrDWz/5b/lJtl
         mLfdDPYYuwykFK73JmjyVanOKnBZEXI+FWP775cNRPEc6j7ffitiSvCbgMUcHg/HnbbF
         S6VfQNa2hQmz1XQS/hX/TuZPd5y8iW/a30uIPhHxvcv1A8rjIAbAhzhoLht28W2Ao/qi
         5HwQcpheF5IV28IlPDYCMu7D41poShZaK0K/C27WYEon6p+Sl7lwgwyeTXSguJGFcVFR
         svyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=AOXs8HMvcdU3nxYO1lc5nB+xUvOimCpEaWjS7uF8Y3g=;
        b=a3xOO4dLlZGI3T8BrsgH6lq/bCR4a+YryerdCKkMJLqsIiXoSZZMTe3ySkH/hVzXBV
         hyCN8qO9/aAOHRv5AjtjKSoOjbSB6qmr55IRHP5gHHktXx9WpN7XmPSfK1Rs69+3cSDn
         X/I/rSupdWgvLPX3Dg/zUW/7pmFc7M85rkL+xlG8imYzQa6bRpw5gErTqMDWbjphSDiu
         yK4nh0ntlUoh7rj8wAFFHP8+ukg8ewF6npAyc6fvdc7EHNvhHdetr0UKtiRjVenU/+J4
         2MbOROslUUk0dgQMmQqmIKLW/sViAgTXkamdxDCRc9AlsXnGyf2pBBFqNdvSvCOawq09
         nkIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="1/QYBdJE";
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id a4-20020a2e88c4000000b00298a88a8f1csi14327ljk.5.2023.03.14.09.29.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 09:29:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 58F34219FF;
	Tue, 14 Mar 2023 16:29:26 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 379F113A26;
	Tue, 14 Mar 2023 16:29:26 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id XPHjDOagEGRqZQAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 14 Mar 2023 16:29:26 +0000
Message-ID: <82eb95ac-2dca-7a7a-116a-2771c4551bab@suse.de>
Date: Tue, 14 Mar 2023 17:29:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH 5/9] iscsi: set netns for iscsi_tcp hosts
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <566c527d12f6ed56eeb40952fef7431a0ccdc78f.1675876735.git.lduncan@suse.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <566c527d12f6ed56eeb40952fef7431a0ccdc78f.1675876735.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b="1/QYBdJE";
       dkim=neutral (no key) header.i=@suse.de;       spf=pass (google.com:
 domain of hare@suse.de designates 195.135.220.28 as permitted sender)
 smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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

On 2/8/23 18:40, Lee Duncan wrote:
> From: Lee Duncan <lduncan@suse.com>
> 
> This lets iscsi_tcp operate in multiple namespaces.  It uses current
> during session creation to find the net namespace, but it might be
> better to manage to pass it along from the iscsi netlink socket.
> 
And indeed, I'd rather use the namespace from the iscsi netlink socket.
If you use the namespace from session creation you'd better hope that
this function is not called from a workqueue ...


> Signed-off-by: Chris Leech <cleech@redhat.com>
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>   drivers/scsi/iscsi_tcp.c            | 7 +++++++
>   drivers/scsi/scsi_transport_iscsi.c | 7 ++++++-
>   include/scsi/scsi_transport_iscsi.h | 1 +
>   3 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 0454d94e8cf0..22e7a5c93627 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -1069,6 +1069,11 @@ static int iscsi_sw_tcp_slave_configure(struct scsi_device *sdev)
>   	return 0;
>   }
>   
> +static struct net *iscsi_sw_tcp_netns(struct Scsi_Host *shost)
> +{
> +	return current->nsproxy->net_ns;
> +}
> +

See above if you can't reference the namespace for the netlink socket here.

>   static struct scsi_host_template iscsi_sw_tcp_sht = {
>   	.module			= THIS_MODULE,
>   	.name			= "iSCSI Initiator over TCP/IP",
> @@ -1124,6 +1129,8 @@ static struct iscsi_transport iscsi_sw_tcp_transport = {
>   	.alloc_pdu		= iscsi_sw_tcp_pdu_alloc,
>   	/* recovery */
>   	.session_recovery_timedout = iscsi_session_recovery_timedout,
> +	/* net namespace */
> +	.get_netns		= iscsi_sw_tcp_netns,
>   };
>   
>   static int __init iscsi_sw_tcp_init(void)
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 230b43d34c5f..996a9abfa1f5 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -1600,10 +1600,15 @@ static int iscsi_setup_host(struct transport_container *tc, struct device *dev,
>   {
>   	struct Scsi_Host *shost = dev_to_shost(dev);
>   	struct iscsi_cls_host *ihost = shost->shost_data;
> +	struct iscsi_internal *priv = to_iscsi_internal(shost->transportt);
> +	struct iscsi_transport *transport = priv->iscsi_transport;
>   
>   	memset(ihost, 0, sizeof(*ihost));
>   	mutex_init(&ihost->mutex);
> -	ihost->netns = &init_net;
> +	if (transport->get_netns)
> +		ihost->netns = transport->get_netns(shost);
> +	else
> +		ihost->netns = &init_net;
>   
>   	iscsi_bsg_host_add(shost, ihost);
>   	/* ignore any bsg add error - we just can't do sgio */
> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
> index af0c5a15f316..f8885d0c37d8 100644
> --- a/include/scsi/scsi_transport_iscsi.h
> +++ b/include/scsi/scsi_transport_iscsi.h
> @@ -156,6 +156,7 @@ struct iscsi_transport {
>   	int (*logout_flashnode_sid) (struct iscsi_cls_session *cls_sess);
>   	int (*get_host_stats) (struct Scsi_Host *shost, char *buf, int len);
>   	u8 (*check_protection)(struct iscsi_task *task, sector_t *sector);
> +	struct net *(*get_netns)(struct Scsi_Host *shost);
>   };
>   
>   /*

Cheers,

Hannes

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/82eb95ac-2dca-7a7a-116a-2771c4551bab%40suse.de.
