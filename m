Return-Path: <open-iscsi+bncBD3JNNMDTMEBB3HVQDZQKGQEJCNRYOA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC42179C7B
	for <lists+open-iscsi@lfdr.de>; Thu,  5 Mar 2020 00:34:06 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id o189sf1330716vka.23
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Mar 2020 15:34:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583364845; cv=pass;
        d=google.com; s=arc-20160816;
        b=xAQYi6t2XgAjWwttjouS3+Bxe3Hg8KsO176b2R6rNnk77rmtWFb/grsJorc1Pv1poB
         GkiNFMyfpv1oWPJgEDI/gAEbWMbdx6VYyFGdnjKuntU6gDbALuIZwJWKcuqdy9xLJXmC
         aeA3lGWDjuLBdbyLgxa1gZv3spbXtkVL1DAmfuuYNC3c7SGYe/rjuW6yhwQ2lcl0/I9w
         UcWTh/qlKSRdtpRQeNxjiit31UkzV5qA4M0wBN4qDNVyARGuCYEyMSripaYCD2CbmTfu
         g5/MXfJ5DU7PNLFOatl7valfKF1wL/6pSPRNyVa4z9p+4IksziLKLov0XaEVR3OQTCK7
         y1FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=tXsb8x8QbiEsUm74Adk7lAdbkAVaU/dWBjeQnrwjqjQ=;
        b=zv0aCscLgEE+uvbrcwOhDa8t4AEq1o6LqRGzsYFLuFbwaYMchNx7QdKBFi+oBqMlO1
         2CcdXo0nlYSbrEARqmYzVzUJMxy+80wxhEwgCtaLzGWSRTcVh0GCQoNZ5nXzSASiaedF
         GXc5hJoOp4bkRGMAxRx9h+P77SkIrhZNRvn5VN91kJlLUSX7hGlWAOSap+GMkYHuYPYf
         F7Lwv+7w8n1rzE6Er17whMDoL7ePxeYfqJ/NAPOtMrCgziHL/IfQ+Xf8ZUruDyUqgP7K
         8Eu9F9Cflh25XjrABFdblx/9xXCuTTurDIH57/7rVqxQjICwDybDbM4PCrApx2pbVU7U
         etGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.195 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tXsb8x8QbiEsUm74Adk7lAdbkAVaU/dWBjeQnrwjqjQ=;
        b=MPKaVmDkmBVxBX6Z8WxanLh1JfGrPAjTMtMDPgIjn1ThWEjYwDx1Uhma/rgqrpgFpC
         BQ25AmdlctiNdXScu5i7aqGecPQDep9B29Z5OvtKbV1H95QOUVZGGGI0OuvbvhBChaJF
         OsyNetPAqGeZfIj97NlSNhHtuX73fx7u0Gtbibqypm/oifxSzicNBq2jzroyR76O40iO
         YymDn0NOfdvxiRAqu3+CWl+/vy77CXFtg+J4+NYD/oeVETHXnSPfb16UdHtDhpetVeIw
         BjjfPWiArqliAv6u0MuY1TIX2B9D905djZh9nmmJyHNrqIgM7w8Z/OY0Y0GBFAbgiME1
         0YbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tXsb8x8QbiEsUm74Adk7lAdbkAVaU/dWBjeQnrwjqjQ=;
        b=Mrf5yvtOHqAdGz9f5qTsvHNHck1zL3bidhY4uFqTgOopKcmFmCr/kXEbzaRiA9S62/
         Vow560W3ES2aevKxtBiHhAfDdh5vxKsS6/ZOTPTRUNjQDqrzj8DW6ivR0hrP7p3NWxqT
         Wry/YOcxZyw6j7HUcK9CxGSrFdD4gptCA7ko2855tx15h/YWzrQM/5M2JC8xMF6sZR0Z
         9bO3QjfybalRvFupF0mOgx2C2verIoxyw9yXOm5VKDDQAAm3xWMC/2jdb5PnwVGHAk6k
         5XqScM790pyyKAgY8rVizdQY0OAZ1sdYVvhFhcjrKw5g6x1nFb7MY+1Kli27UDhP8WkG
         HF5w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ0S3kFh/zcLMMRyWskV5beCkzJUIGdZ3H7Rf0QgVkzh5SbwBVRh
	SWEEAeqjLqYABayxpyogVSI=
X-Google-Smtp-Source: ADFU+vv7LLLSJAcW5LmzGeLsqX9Y8vJHiHDqChXP6ti2h+RS8/PwEXLQ7AaFmGsdb3MVhNCHTrgUpQ==
X-Received: by 2002:ab0:6210:: with SMTP id m16mr2876955uao.93.1583364844841;
        Wed, 04 Mar 2020 15:34:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:fe08:: with SMTP id l8ls20598vsr.4.gmail; Wed, 04 Mar
 2020 15:34:04 -0800 (PST)
X-Received: by 2002:a67:bd0b:: with SMTP id y11mr3326561vsq.29.1583364844192;
        Wed, 04 Mar 2020 15:34:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583364844; cv=none;
        d=google.com; s=arc-20160816;
        b=bDDUoqJ2Q2YXHSFBdLCQIFdbKcPJc9m5Nfcgh15/40DX2qNdMuRBaiQ+rxGdm8HzR3
         Wwq6Js1/xREdSck2fKODg/t3GzB/jE4lSEMi/RTqfckqAilEK+JwFsYuLUKSGVjzRjqL
         qLKjgcAeGX3LHE+rMz4KqOxvtOJNDKbTbvHUH1T8BoFp6Qt18zLyAPdFbTXAbjDkiadM
         tToz7jsa//AR//QT5qAUG5hFF03iEm6S43R927Q3MhALlKKK4NTJ94sz8xQxHO9qkzpi
         3zp+o3FAnH1Kfzme1hWilkikVzy+9td0jd6hPCkwffR6jS0zXQblyLhN3N740vPYqzlV
         Bhgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=gykwNNuyk2Q7gDAHD6Zsfoyme0Udz5ys84EX9qpMQOk=;
        b=KOIyWUFFcG2uN3Rb9l7NEZxXlLmx+xqptOCMTsQmFV7KEXUYwVZzHcxpM4fZFTMB1t
         lJlkdk02FG0IdCSi8eoBP7ifZUvp8JlX7HOfQrWRH0SdMBNgxk1yXixUVkmAB4bMgxO1
         8wMj2bdrA+V7BY6SDAFzBnUFT1q956vW1DFi2EQ9Y03VOpbOZbf/5o5twPG740nYA80V
         VcEX18WjpP+27u69Q9Ou3iKDSr5OnhZqcJ3sIbJEXaBbqVIybOd4ACHjE9215ZjT64Bw
         ixYL1ycSBH8SUxHDknCOyQqwKNygdaC0SWVy4/kVuEXoYHFdh+z6BIFGayCWqeQjGOlp
         4T+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.195 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com. [209.85.214.195])
        by gmr-mx.google.com with ESMTPS id o21si158283uaj.1.2020.03.04.15.34.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2020 15:34:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.195 as permitted sender) client-ip=209.85.214.195;
Received: by mail-pl1-f195.google.com with SMTP id g6so1774443plt.2
        for <open-iscsi@googlegroups.com>; Wed, 04 Mar 2020 15:34:04 -0800 (PST)
X-Received: by 2002:a17:90a:9515:: with SMTP id t21mr5471524pjo.14.1583364843143;
        Wed, 04 Mar 2020 15:34:03 -0800 (PST)
Received: from desktop-bart.svl.corp.google.com ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
        by smtp.gmail.com with ESMTPSA id j12sm3903714pjd.4.2020.03.04.15.34.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2020 15:34:02 -0800 (PST)
Subject: Re: [PATCH] iscsi: Report connection state on sysfs
To: open-iscsi@googlegroups.com,
 Gabriel Krisman Bertazi <krisman@collabora.com>, lduncan@suse.com
Cc: cleech@redhat.com, martin.petersen@oracle.com,
 linux-scsi@vger.kernel.org, kernel@collabora.com,
 Khazhismel Kumykov <khazhy@google.com>, Junho Ryu <jayr@google.com>
References: <20200304225704.1221703-1-krisman@collabora.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <387eebf7-3256-3462-f91d-e42a5de4824d@acm.org>
Date: Wed, 4 Mar 2020 15:34:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200304225704.1221703-1-krisman@collabora.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.195 as
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

On 3/4/20 2:57 PM, Gabriel Krisman Bertazi wrote:
> +static const struct {
> +	int state;
> +	char *name;
> +} connection_state_name[] = {
> +	{ISCSI_CONN_UP, "up"},
> +	{ISCSI_CONN_DOWN, "down"},
> +	{ISCSI_CONN_FAILED, "failed"}
> +};
> +
> +static ssize_t
> +show_conn_state(struct device *dev, struct device_attribute *attr,
> +		     char *buf)
> +{
> +	struct iscsi_cls_conn *conn = iscsi_dev_to_conn(dev->parent);
> +
> +	return sprintf(buf, "%s\n",
> +		       connection_state_name[conn->state].name);
> +}
> +static ISCSI_CLASS_ATTR(conn, state, S_IRUGO, show_conn_state,
> +			NULL);

The above code can only work if ISCSI_CONN_UP == 0, ISCSI_CONN_DOWN == 1 
and ISCSI_CONN_FAILED == 2. Please don't hardcode such a dependency and 
use designated initializers instead.

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/387eebf7-3256-3462-f91d-e42a5de4824d%40acm.org.
