Return-Path: <open-iscsi+bncBDA4VMEL3QNRBF5CQXZQKGQE2PVPZFQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FE117AEDE
	for <lists+open-iscsi@lfdr.de>; Thu,  5 Mar 2020 20:20:55 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id a1sf1679191edv.8
        for <lists+open-iscsi@lfdr.de>; Thu, 05 Mar 2020 11:20:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583436055; cv=pass;
        d=google.com; s=arc-20160816;
        b=02gbD1SOodhRwRwKo1YRxpTu+v5HsLfs2TMDsFzPZ8m/+dKZDpSvNR61Ken8F89T9T
         gbrOqbykdUkYb6KoigLlLZ0I1Dw0RTy/NbFw0bMaDLWeuCLsM71kcm/LVPt4dnz+nKv6
         0Xq/sVDnoaC95dEamEdFGrqz6KG8LN8Hdq1G8Q6HrShHZZXIT2GHDsKnU9Y9mj+R55OT
         +yBrg2B7fmiWVqC5b4Fg5SnKNnTdSTKuvODFG/ophW9tRScrOl6UB4RMDrnd1DiVqhqY
         GcyieL6gFIpFYKrYjqFL3syji4AOZa264oJhrKCJfPvHMOhW3gOZGIuq85rLSoEmFgYp
         KWNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:subject:cc:to
         :from:sender:dkim-signature;
        bh=rcwq9ECKDHzMMhxqikMVhTvvckCxCk9R80Zcjg6J5MI=;
        b=WMMg2k/9bZKz6qfxhINhVL+x+bJOjIrVXIDj3PDNF0VzfXgK/r0GmcqRrmeVUwwE9g
         UMCbq3NeaxsvdtwZvF0XdMKn49tApa7DSjYvyr/ACcxcVXAoAY3fSwGz1kiNeNiTiIAf
         ATeROL2WKUIJJKdhhb48bGzZ9U5xkNdUnjYullrOhTQf0ha013w5CRi0XBi3/l/MiBXd
         +6B1aVkVwRwjYrBT5fEVRSJ1TIT3GK5oFGpcF4hMnYFClEYeh2Rr6Gr9fx3J9Yl+uGrz
         8m/9OtQQbOcbmIazGY6ZdT4+9hKYHkk/IF7F72vT/Wec71Tl6iIKZE3U8BobgraphB4x
         GxXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rcwq9ECKDHzMMhxqikMVhTvvckCxCk9R80Zcjg6J5MI=;
        b=gDybBlBRQepPHJskpU9t+hZLaUIQah1mP9fUih0+ELKjHvWfUH8nVax9SLddT3vrSE
         j4yaeZUZng1skwjJHqqfV9SVelbkeO9/3QIG9MlzPGKhus9gJ8mjvDVCdSQd2oR7niBY
         AAC0lK8h0PnV6myACE5EMNoJ7+xXy84N7V9OmsHGDj0a7PEJISNcHgnjk4vnIbVfXAkK
         TEj56+87DqexQzZMmf+D17mblMU74/F4Uscvs+GhaI2BM9SHtlAp7s441CP9RtxF2WlT
         znhXkxTdjGiwvUUIBK4frn9WmMUPMDjmJsJfrFk/MbxJdi4h9r5JpFbIKaRX+NhmAAZY
         SePA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rcwq9ECKDHzMMhxqikMVhTvvckCxCk9R80Zcjg6J5MI=;
        b=WToxCja55KgYbXLQZmFDxoebWAX9CdPqSXEu3EoJQHzDNqtpLCqh5ThQglGeL4QFio
         fMO+xHtfQjd4f1g6QVWcCqmGXPhpEqZZHvIaPFL3QKBCch8SqZXV4pWfFE/whNlRwhGr
         l54cLzbNPfEkN1oF/e82U6cPtYBzija4rJxYLsTkrmnLEg8d2glAqL/LwnRpuzwDYnGR
         Xb3WxoMrOIA6v8K0UP/u2UYfFe753hlfMH1mf+mpwcYepoyGaDnUCqJ4RDl9Hs2QLLDv
         XAP0SHWhwIMGPITA0SvgJGYjXRSn8QOOpVa/IMPTgsV/IJVlZxC+GPUwLUcms6jXzut7
         1H7g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ2Bc7xa+z6IZXwHUxWWZQRhO4eyds4jkFHEwU/0jBqrR5j/L8u0
	grdOEdwpU4Szj2AQuJTdXWw=
X-Google-Smtp-Source: ADFU+vuj+L6q23H76Q9P9MA84MvwCb1O2SERsIxZTeWOZVwOFOSNp4W9i5desf7gaDjFE57bDVJ5ZQ==
X-Received: by 2002:a17:906:779d:: with SMTP id s29mr8882599ejm.251.1583436055327;
        Thu, 05 Mar 2020 11:20:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:33d6:: with SMTP id w22ls363993eja.11.gmail; Thu, 05
 Mar 2020 11:20:54 -0800 (PST)
X-Received: by 2002:a17:906:5604:: with SMTP id f4mr8976513ejq.255.1583436054777;
        Thu, 05 Mar 2020 11:20:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583436054; cv=none;
        d=google.com; s=arc-20160816;
        b=q/q78D8WetLXxaJgQRLSf6JMNL71iqfwvbdSUK475ZtQ2GAT0f+CRdn61akuz2NPy5
         v1xLCOyGcZvK7OCakAaKTsJMlsuxyB6x6QbthinW2I2j7dsuBFE/pAMDpWm7ySz8OSdu
         zU6JBmEpNMIFIlerCFUp5BjoMA6+dC4xev+g2rCjkaZ68vKs5yWu5d320BpXF1fZyoU1
         ddNoiYuSL6PWAOW4ax38NQVxFHGlJodo7OdCCURZHRIlBtcfV2JoNsn0TDguPZ1LC3fE
         +V0JKbrnwSnSwyJsS2TWA8fl5LSoUSG8MhWE2UqEaG4R5fRpuabA6JMzDEiTl+eOMSg8
         yNqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:subject:cc:to:from;
        bh=BGirfuQlC8utSpPvn8gpWxR8IqwysH/36R+zv0OEQ0k=;
        b=lUxN0lBxIFsdjYDyrQy/RhYYUrS3gOIT27avbH+vjDruNGqgOfh96AgyrcWbuXH13k
         9alf+CLotcEGKwvvMRxTbPacgSF/0U3EcPZuyut7Ca/Gq43MZyXj9GV7IWqlQNDgMObO
         owBJY7+7HL2jp02OxUp5d0Qty5wkLwYc00z2CahhiZbr2XHrRfkiZCNEqSE/HUbDqYTo
         NbSscq4lXVAC19LSmjKE2FLXC6LK87NOe8ter/MKLQxtK+ifDaB0wIeuV8QrV0wVxOxS
         2wl3SYHFD+SzPYRMph1+yZn25R+zqgU0DjkTqUvM0fH/wsRUr13AEVZ+1FO7MhAQnXiC
         tKVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id h10si410886edn.1.2020.03.05.11.20.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 05 Mar 2020 11:20:54 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id 7CDEA29376E
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: Bart Van Assche <bvanassche@acm.org>
Cc: open-iscsi@googlegroups.com,  lduncan@suse.com,  cleech@redhat.com,  martin.petersen@oracle.com,  linux-scsi@vger.kernel.org,  kernel@collabora.com,  Khazhismel Kumykov <khazhy@google.com>,  Junho Ryu <jayr@google.com>
Subject: Re: [PATCH v2] iscsi: Report connection state on sysfs
Organization: Collabora
References: <20200305153521.1374259-1-krisman@collabora.com>
	<bc70bd6d-6d13-4d1c-8559-140411e361d9@acm.org>
Date: Thu, 05 Mar 2020 14:20:50 -0500
In-Reply-To: <bc70bd6d-6d13-4d1c-8559-140411e361d9@acm.org> (Bart Van Assche's
	message of "Thu, 5 Mar 2020 08:56:26 -0800")
Message-ID: <854kv2bobx.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Bart Van Assche <bvanassche@acm.org> writes:

> On 3/5/20 7:35 AM, Gabriel Krisman Bertazi wrote:
>> +static const struct {
>> +	int value;
>> +	char *name;
>> +} connection_state_names[] = {
>> +	{ISCSI_CONN_UP, "up"},
>> +	{ISCSI_CONN_DOWN, "down"},
>> +	{ISCSI_CONN_FAILED, "failed"}
>> +};
>> +
>> +static const char *connection_state_name(int state)
>> +{
>> +	int i;
>> +
>> +	for (i = 0; i < ARRAY_SIZE(connection_state_names); i++) {
>> +		if (connection_state_names[i].value == state)
>> +			return connection_state_names[i].name;
>> +	}
>> +	return NULL;
>> +}
>> +
>> +static ssize_t show_conn_state(struct device *dev,
>> +			       struct device_attribute *attr, char *buf)
>> +{
>> +	struct iscsi_cls_conn *conn = iscsi_dev_to_conn(dev->parent);
>> +
>> +	return sprintf(buf, "%s\n", connection_state_name(conn->state));
>> +}
>> +static ISCSI_CLASS_ATTR(conn, state, S_IRUGO, show_conn_state,
>> +			NULL);
>
> What has been changed in v2 compared to v1? Please always include a
> changelog when posting a new version.
>
> Additionally, it seems like the comment I posted on v1 has not been
> addressed?

Hi Bart,

v2 no longer has the dependency for specific values for the state, as
you requested.  It follows the pattern in similar places in the iscsi
code.  Why would designated initializers be better than my solution?

-- 
Gabriel Krisman Bertazi

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/854kv2bobx.fsf%40collabora.com.
