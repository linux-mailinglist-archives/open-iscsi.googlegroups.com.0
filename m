Return-Path: <open-iscsi+bncBD3JNNMDTMEBB7O6RPZQKGQESPLZVEQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B4717C9E0
	for <lists+open-iscsi@lfdr.de>; Sat,  7 Mar 2020 01:49:02 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id l27sf2824804qkl.0
        for <lists+open-iscsi@lfdr.de>; Fri, 06 Mar 2020 16:49:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583542141; cv=pass;
        d=google.com; s=arc-20160816;
        b=zZC1vTxFEYo87hpePlzI5KahpxPNuMGRozoH83hELbe7SkSU783WDOUDvwupwj4USy
         gR35z+xXtHVfDHqa4nq6RpvZqf5erPfpxJGheTofBVwCCsjoEh3yid855I1zovsoDASV
         KBu3z4lOXdgwvlwLsBbENee22ORE582EwNKWp32sGrctjDWC0J+q9IBlaBYS3w2u80Ps
         Ev6GKnOMZQlGxzWKRfeSAgmZdj7IsUxxyWFzuNDm4dvmms62VKGRVJ4xppdpaaREXdyT
         3wcOMfPbnB0C9QRw8nviZ/oGdCmXRZx6gfwYtN+Wjk2wCYo8+HEfSzfAiauWfhYUWs7q
         bxgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=VfKfsfHzmaL+1VJbZbSW20wTTmqhRKcg1s8b53KGKq8=;
        b=EI91TBZnATLnRhmSRoyYD/czAijBXA/aKBUlCfLI8YvHJn3y/2qq+rFqJixLMycyWb
         cHRkR+AmxbojGfqGVPA+rFuW8Ii+TNJ5yW2+RrQOpPJuxxbcGDyjLLZbl0POQ2Ym8bb1
         sWgHg/rLGMqg8uasG32bUCRe5GX7DddhTxe8+IPty5D1HQx/DTKqRITahLsCHG5VQqMF
         WxvrGJqXN06EPDt+XGsjP/9EPm7Ql/0/DvN5c4YOJTkZWMhjdEflQFWYxMoLTVDfx/eQ
         Hnw3dB0lPre1pEez1LoY5jGbnIxJ67Ku8mOlBUOaFLXVXO4qnQGqv3Gdj102y+xZnFTa
         iz5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.194 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VfKfsfHzmaL+1VJbZbSW20wTTmqhRKcg1s8b53KGKq8=;
        b=EtpjwJb7+6nZCb9Cowo0tz7gHbbBrjq7IRmNYWwjQpxvn15dScMrUIyB7jw1TA9yQk
         oMLtTic/dg8YXO5DApX3I5g6WGFAaBE6rib0nbVhh9KGMDiZComeSlW4u9GTKyiVeL5y
         1NNdwVMElyMePU0oXOVNZbSFJ3aBX3OesTrpxHKwrf0ybClrxTTy7Tia2vugwd+OrL5n
         yqHb8QZaSAQ7if/aUzYhDmap6gJQHHzhEjiJP/Q8C/nu05+Jp5Q1YmMh+7vFd8siI5un
         +a3fNXPQSly29mkliMc7fYR3m4sBHSRy9YhgG577YyjayYtM1PbmIuHI2hWW02GWGHNA
         nhlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VfKfsfHzmaL+1VJbZbSW20wTTmqhRKcg1s8b53KGKq8=;
        b=UFV9MF8e7ez0HOYu26tDq6hAlkwqKbiC52s9d1Up8HjeD+xrQ0ZzQyT0cplrKX9T6L
         vqkDQ1Fee5i6I5qHDZlRJsZ7RAofATW8G4htJiXgryKEwbL6BFnm+1n5PFwgk45cAXDj
         lZl8o16SjfZ9WcjtH2JaqvY15VzpTYFi1C5Lk8Z1YYG7XdA4TM6v20K+/Ldp7IHfyRIm
         FpVAQN8EpqkVGfJv4zNed3RS8F1rvf2OIXOeR71wO/T4h8eqPOfxIfJY6RbTSLYSmtLP
         ELPlqLDQAr8NnSbSmnF1DMcBd5pUG5DxnRLGEA05TCAmUu/TfhMWeKBIRmMI019IdUDF
         4OVQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ3bTFk1MvsbWZLY0IgBRjAwlnQCTaa3Swd9yzHDbFVzAcRONHB+
	MyTEEuEmL3CJ5r6J/RdGIMk=
X-Google-Smtp-Source: ADFU+vteadN3Vwc05oYLSt8XU1jWBLpfmOgLGSjXXEPaOAfwa21sXvmwtAxKoFzHOuGiOLWE62bzUA==
X-Received: by 2002:ac8:43c1:: with SMTP id w1mr5556153qtn.381.1583542141167;
        Fri, 06 Mar 2020 16:49:01 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:514c:: with SMTP id g12ls954966qvq.7.gmail; Fri, 06 Mar
 2020 16:49:00 -0800 (PST)
X-Received: by 2002:ad4:5288:: with SMTP id v8mr5675175qvr.120.1583542140759;
        Fri, 06 Mar 2020 16:49:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583542140; cv=none;
        d=google.com; s=arc-20160816;
        b=LM+ZE9CwfBtHzWJLhJhJnUtDTW7yHX9AX5T0Yn/mISMiCf+XacucDr1QVaPjAvzRVG
         M8l4sD1zo7k4LikOie8BifhdLibN3ITvfPf6f69sOFjiXavNX0g7OYJmuxVvKas8rLu+
         UTSGDHHUJf6lt4gilIzwInzZ/+598Bb5BYXZ46C3KTVK4UZd6R4lHPlOP0dkMhj4fKRl
         v5wVuUMwLEfzEKn8AvqMb0Uff3SeV0CXUvqpWeL2jcJjNrrD1N5t/82oolacYTI0MTwA
         MqsgSW9NgEgDBcjbdtE4gaXCNLLpz2Gihr4iT6NDdPiR/zaalmqK3QWBVByxEDMXxh9J
         BiuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=O2IFTGV2/8sXNAcc4XgejeiSdt2yZwnhs0Imj+KkeJQ=;
        b=FgW7HUMkWl9YgP5+E+LbDjk+lwKGXDK71X6i49jb0I/CEHUQjsn3KOzyPJax3+bNcf
         TbniIrZyDn3T53n7cffJqOL0E1ECNc3eIgeb0D3a6cfDGXmNFpobBkScZOzXyGPmannw
         FIjPfKVVoEqUBvQ6afFp1hRQsUQrsHrBZJ3dPqixEJJVASS28BnY/ZK6BC26fHgmzgPv
         JTTiVmdAJc/dhDVvDtOLfDhfPceF+JWaZE4Z/sH29HqwQsEXnlu24wsMb301jSawl3FJ
         J+AiQAW8fUHSwFE4y5ucy8FkZPFd2U0P1+UUJSVRS2/z/RkSL+fuGonlVMlfAq8S9D+v
         4N+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.194 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com. [209.85.210.194])
        by gmr-mx.google.com with ESMTPS id i26si172810qki.1.2020.03.06.16.49.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 16:49:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.194 as permitted sender) client-ip=209.85.210.194;
Received: by mail-pf1-f194.google.com with SMTP id z65so1908677pfz.8
        for <open-iscsi@googlegroups.com>; Fri, 06 Mar 2020 16:49:00 -0800 (PST)
X-Received: by 2002:a63:334c:: with SMTP id z73mr3115032pgz.421.1583542139700;
        Fri, 06 Mar 2020 16:48:59 -0800 (PST)
Received: from desktop-bart.svl.corp.google.com ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
        by smtp.gmail.com with ESMTPSA id k9sm10565374pjo.19.2020.03.06.16.48.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 16:48:58 -0800 (PST)
Subject: Re: [PATCH v2] iscsi: Report connection state on sysfs
To: open-iscsi@googlegroups.com,
 Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, cleech@redhat.com, martin.petersen@oracle.com,
 linux-scsi@vger.kernel.org, kernel@collabora.com,
 Khazhismel Kumykov <khazhy@google.com>, Junho Ryu <jayr@google.com>
References: <20200305153521.1374259-1-krisman@collabora.com>
 <bc70bd6d-6d13-4d1c-8559-140411e361d9@acm.org> <854kv2bobx.fsf@collabora.com>
 <b2b62579-b2b6-b797-501b-186ac24df399@acm.org> <85h7z12r20.fsf@collabora.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <be183875-967a-402a-7fb4-3d1db3bca0f8@acm.org>
Date: Fri, 6 Mar 2020 16:48:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <85h7z12r20.fsf@collabora.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.194 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 3/6/20 11:59 AM, Gabriel Krisman Bertazi wrote:
> +static const char *const connection_state_names[] = {
> +	[ISCSI_CONN_UP] = "up",
> +	[ISCSI_CONN_DOWN] = "down",
> +	[ISCSI_CONN_FAILED] = "failed"
> +};
> +
> +static ssize_t show_conn_state(struct device *dev,
> +			       struct device_attribute *attr, char *buf)
> +{
> +	struct iscsi_cls_conn *conn = iscsi_dev_to_conn(dev->parent);
> +	const char *state = "unknown";
> +
> +	if (conn->state < ARRAY_SIZE(connection_state_names))
> +		state = connection_state_names[conn->state];
> +
> +	return sprintf(buf, "%s\n", state);
> +}
> +static ISCSI_CLASS_ATTR(conn, state, S_IRUGO, show_conn_state,
> +			NULL);

Thank you for having made this change.

> +/* iscsi class connection state */
> +enum {
> +	ISCSI_CONN_UP = 0,
> +	ISCSI_CONN_DOWN,
> +	ISCSI_CONN_FAILED,
> +};
> +
>   struct iscsi_cls_conn {
>   	struct list_head conn_list;	/* item in connlist */
>   	struct list_head conn_list_err;	/* item in connlist_err */
> @@ -198,6 +205,7 @@ struct iscsi_cls_conn {
>   	struct iscsi_endpoint *ep;
>   
>   	struct device dev;		/* sysfs transport/container device */
> +	unsigned int state;
>   };

Can 'state' have another value than those declared in the enumeration 
type? If not, how about changing the type of 'state' from 'unsigned int' 
into 'enum ...'? If that change is made, a check will have to be added 
in show_conn_state() whether conn->state >= 0 since the C standard does 
not guarantee whether enumeration types are signed or unsigned.

Bart.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/be183875-967a-402a-7fb4-3d1db3bca0f8%40acm.org.
