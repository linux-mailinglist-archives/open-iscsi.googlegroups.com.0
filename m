Return-Path: <open-iscsi+bncBD3JNNMDTMEBBHGYQXZQKGQE7X6CHFY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8012E17B05A
	for <lists+open-iscsi@lfdr.de>; Thu,  5 Mar 2020 22:16:13 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id o79sf222077ywo.14
        for <lists+open-iscsi@lfdr.de>; Thu, 05 Mar 2020 13:16:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583442972; cv=pass;
        d=google.com; s=arc-20160816;
        b=aOWjnNtHcgHS5rbDIigCypntko3XHzIRpG44G5Zw1XT60YhU+aMS7e38tMPxRIrUDJ
         8X0cutKNX7pdp5Ex74YZda2K/NX07pBE0g0MgHVkn/ix+dqCyz7/V6tyJaFeGR58cVvt
         SgmSSAvXgs+3Gjx0lkqvvqBWLbjtpKqeKBMxq9e+xU89u11i43DZ6DhwBnPtRLCuXesj
         OKRme4dT2KclevEfff2nN3PxceySiZ+0360Wsnq/KVod4kIFU5jTLtYur9gTSpxo91lh
         DCmVJ4m7OffsABbj73xH7UqwKM4XQ1v8goTp90N1EhE08zmohzDiybONiPjL9XMJMTHB
         tYPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=4yD/ynBy1L1H/qMsVanUGoNc9Xup01mq/U3AU9MzxlY=;
        b=SMNgJUCnPg7L01O/1rJximXKlsSWkWeC/4GQYO1X4cIFvIw+VapO9HNnKn2g49wRev
         M+kbrh5CnyebmyvKysRmuWypI5ftjeICUDtWVJgDqKP3ftIAQqZb2Tc/zwYyL8vfVW25
         Yyt8wujwYW/8R7VWFYeb0c0qDoazKlZ78BiFsXTfQ4gxLnWg8Vh0BvdKoKNmnZ9omYDd
         C1fvA5+4zMTMmbihjxbv47FOeo+kGMj7jOsrW4d355xBPUEBMShWT7E8muACiL0IwUu3
         LdgnwRUtoCCpw89j0Jfj7H0jLOW+UMaSqJ2hihFysJ9d+GyG1EK06UqUw41ogYMKeNuh
         rajg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.195 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4yD/ynBy1L1H/qMsVanUGoNc9Xup01mq/U3AU9MzxlY=;
        b=XDuhp/YpBkGxbOIjH9NB1KUkLe5gCz9IQ2HyUkDO249R/22pHWN08iojBqgtsbzFii
         nP9TlKckrYeurzq6hrRGtQx9sYglQAUcLmH26pdxC1A7rJNDltO4tMay/Zx1ktAQKvF3
         Snq7ujMfaJU8sJlGBZOBfaZTyl/6vgt+cvfdxElvH4SCSg1CZbenzOC+AWb0il2oI8vU
         rcmMkIigV1mJjIUFlV8aGSGvmKceFxPwqCMsos4lrASBgepea+md4Y8egYxH0iwZag9X
         oi16SAJGWxBeyBIpLyFzElTYUYO+Xarsd3uF5nHjk2NCKPvsWf2NbFGaqlmLj00/OhMm
         rVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4yD/ynBy1L1H/qMsVanUGoNc9Xup01mq/U3AU9MzxlY=;
        b=ZK7rRIBdILMS1Yg658B7sTL4JwEo9Q4qr0j5Z6kigI9PfmVveh6fOZP+oTgGtoq+A0
         +jMrwgJo0a9nbKeEHv1mGapMHbFkR3tsg1N+nBcSbzcXeSBF0Xk3HKDSwoAWOEFLXWS4
         zUQqJlaWV/LzXBYqqeAV/6cJJfEhCW/YLHkrf8yWwzfA3b4HK/BlKuMPitIzPOSgh3mf
         hsOSGgZtBfypEGObOOciPce2prq5Ygitbo/XH+U18cyXFG3tiVP/yxG/49NZ9XFB7qiR
         mvOLjSQHq4hRp/YZP+RlLXk8PBIZoxYxa09jKkI10Bv5dVT3j9ZetuOHrDqHf0cHmRpL
         RTQQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ2ivUTCXBTkDP780d2O4v07L1b0GR6QVjO1ADTXsk32t3qj97z3
	CmvgIHO2xV3vv67DQIsoLXc=
X-Google-Smtp-Source: ADFU+vuOnt6+pBr4zlCq7/WBzHJcp9tvYSPVnF5yPNd0rzVKJAGZnuSRW0Uf1vaVEFYJweCRsGkxIQ==
X-Received: by 2002:a25:8446:: with SMTP id r6mr203042ybm.451.1583442972267;
        Thu, 05 Mar 2020 13:16:12 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:381:: with SMTP id 123ls414222ywd.9.gmail; Thu, 05 Mar
 2020 13:16:11 -0800 (PST)
X-Received: by 2002:a0d:ed02:: with SMTP id w2mr523026ywe.28.1583442971824;
        Thu, 05 Mar 2020 13:16:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583442971; cv=none;
        d=google.com; s=arc-20160816;
        b=zq2pzlmuXwztmiHhsKMxwbsd8su0M527xM4csFPEoU/dW8fJQn9B8kML6Qs/lJAXer
         mmQaHSyXUesXc34tHDc32A7j8ERTY9RhDSai5EtHH2rU8sqw6bWwn9qCQdsIuIclGzbZ
         3HX0plPkgcyi2+xnSqVpUomwyuUUiY1GPUgbvwLeTtfJk5uBGESIMPP0fmNorEREKiwx
         fvJk7XvhwhFz9WL+rqE2QBMKUYR3qy/leTRd/yfVbB1CI1MdTVT76lBZY0FNkdF2bEt8
         pdcqEyjl0fSuwfGw45pfamKqxoD3VT3gjt+dnu9Uu2AFGXhYJ/D7fk1u3dSRP+2rphJr
         x7PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=mRy0QXwPQyZJPqAhJuywWDK9M11rkux+kVjPm7zQzS0=;
        b=QGKkUdxJC/dNz6c88BROTeDQjSpkT1XQSbtF6IaGK+K08Yi2kDfeIL7uFR3PyE6R1y
         3SYcZgKaCTUgBXpIXFDqcPLzdw15m7nnpy6tLS3B9HWZXmrgy4H1iyHXlmuz99GI5O6a
         yMWYJYE2/GmLfgQ5I/aWnnU4qbq/wdCQE19WFAhBNGuXxZL4aUBKuJ2dSDrZBf2D5PI9
         qYhkdydHQWIlNaZEqfQLPq5bBx6JRJw6HeL7wm35mCAdorllLZJgr15xll3PjqahjXLc
         MRmh5YWVC6K7yCTuwnEC1wo06G7/9eaxyKxv4rw+nLu68z9cWXEXWbPTUkuao3DKLzMV
         l7Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.195 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com. [209.85.214.195])
        by gmr-mx.google.com with ESMTPS id l1si18909ybt.2.2020.03.05.13.16.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 13:16:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.195 as permitted sender) client-ip=209.85.214.195;
Received: by mail-pl1-f195.google.com with SMTP id b22so3156466pls.12
        for <open-iscsi@googlegroups.com>; Thu, 05 Mar 2020 13:16:11 -0800 (PST)
X-Received: by 2002:a17:902:2e:: with SMTP id 43mr74899pla.326.1583442970886;
        Thu, 05 Mar 2020 13:16:10 -0800 (PST)
Received: from ?IPv6:2620:15c:2c1:200:fb9c:664d:d2ad:c9b5? ([2620:15c:2c1:200:fb9c:664d:d2ad:c9b5])
        by smtp.gmail.com with ESMTPSA id a36sm32330380pga.32.2020.03.05.13.16.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 13:16:09 -0800 (PST)
Subject: Re: [PATCH v2] iscsi: Report connection state on sysfs
To: open-iscsi@googlegroups.com,
 Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, cleech@redhat.com, martin.petersen@oracle.com,
 linux-scsi@vger.kernel.org, kernel@collabora.com,
 Khazhismel Kumykov <khazhy@google.com>, Junho Ryu <jayr@google.com>
References: <20200305153521.1374259-1-krisman@collabora.com>
 <bc70bd6d-6d13-4d1c-8559-140411e361d9@acm.org> <854kv2bobx.fsf@collabora.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <b2b62579-b2b6-b797-501b-186ac24df399@acm.org>
Date: Thu, 5 Mar 2020 13:16:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <854kv2bobx.fsf@collabora.com>
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

On 3/5/20 11:20 AM, Gabriel Krisman Bertazi wrote:
> Bart Van Assche <bvanassche@acm.org> writes:
> 
>> On 3/5/20 7:35 AM, Gabriel Krisman Bertazi wrote:
>>> +static const struct {
>>> +	int value;
>>> +	char *name;
>>> +} connection_state_names[] = {
>>> +	{ISCSI_CONN_UP, "up"},
>>> +	{ISCSI_CONN_DOWN, "down"},
>>> +	{ISCSI_CONN_FAILED, "failed"}
>>> +};
>>> +
>>> +static const char *connection_state_name(int state)
>>> +{
>>> +	int i;
>>> +
>>> +	for (i = 0; i < ARRAY_SIZE(connection_state_names); i++) {
>>> +		if (connection_state_names[i].value == state)
>>> +			return connection_state_names[i].name;
>>> +	}
>>> +	return NULL;
>>> +}
>>> +
>>> +static ssize_t show_conn_state(struct device *dev,
>>> +			       struct device_attribute *attr, char *buf)
>>> +{
>>> +	struct iscsi_cls_conn *conn = iscsi_dev_to_conn(dev->parent);
>>> +
>>> +	return sprintf(buf, "%s\n", connection_state_name(conn->state));
>>> +}
>>> +static ISCSI_CLASS_ATTR(conn, state, S_IRUGO, show_conn_state,
>>> +			NULL);
>>
>> What has been changed in v2 compared to v1? Please always include a
>> changelog when posting a new version.
>>
>> Additionally, it seems like the comment I posted on v1 has not been
>> addressed?
> 
> Hi Bart,
> 
> v2 no longer has the dependency for specific values for the state, as
> you requested.  It follows the pattern in similar places in the iscsi
> code.  Why would designated initializers be better than my solution?

Hi Gabriel,

How about removing the loop as follows?

static const char *const connection_state_names[] = {
	[ISCSI_CONN_UP]     = "up",
	[ISCSI_CONN_DOWN]   = "down",
	[ISCSI_CONN_FAILED] = "failed",
};

...
	if ((unsigned)conn->state < ARRAY_SIZE(connection_state_names))
		return sprintf(buf, "%s\n",
			connection_state_names[conn->state]);
	else
		...
...

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/b2b62579-b2b6-b797-501b-186ac24df399%40acm.org.
