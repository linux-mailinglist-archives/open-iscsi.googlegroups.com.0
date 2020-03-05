Return-Path: <open-iscsi+bncBD3JNNMDTMEBBP66QTZQKGQEDGSMI3Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3DF17AB02
	for <lists+open-iscsi@lfdr.de>; Thu,  5 Mar 2020 17:56:33 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id x21sf4041765pfp.12
        for <lists+open-iscsi@lfdr.de>; Thu, 05 Mar 2020 08:56:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583427391; cv=pass;
        d=google.com; s=arc-20160816;
        b=fo9miybNf/eZMQXv21n+18HwN6iZlBXxphtsYaMJ7fuJqcUON03wizHvjDWLILBTjN
         ahsrWsKf35c5ILczYtKrKlWajNE9I/OTcscQF2xPWI67dJNgDogcpPqpR6VSVjInRreQ
         aHsABIlTH/ENliG783k5V+2ZaNkZ0Bqtms7ZjMI6oCA2OaLNFVYSuQtDURO8zXPS1Mfv
         Fl+fjTDoFMnI/cKkdAtFty0DZJu3n/lBkiHy8Icm+c7Ce6wf0d1Sk1B8d6PrZfk6A/JU
         9k1XSFeDcgEJiWzQXNM0qvhcDYCvSxBHC24H7Y1uSseaW1//4BEL+rYFhL0aT2a1s0Gd
         CHrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=ZB9YUT6E6vsbQ+xUKlDLDCmHVbwpg6/lqqpf1gwJ/JQ=;
        b=0cF8Trn2Hi6D3IO2MxJZAFdAlVChgzyWYoxKvgzDnZnrBk/95dzlfr+UZwD8Jic+Me
         VbSyy81Se80m/tCzN0AMu86yA+V6Nw+WiUsQqMsqxG94H6JuguqW3zE1+BqSY4yjMUfn
         Z6qlRufI4wTFGwnKHJ4dVJ6dGVhUQnY60bTPrDVbv18zpJ6SuCC1lnrHlkVouTjRDMly
         GzdxuefQIVifkWQJULqk9kReZea61Oarh3SjyPWc/qJqH891yW8X2K+dBIqsqGWtCnEy
         eIRNn4ohSl3COuub7q/rb3WL3cK0en7qudCAJIytDigILsMHMViCI7OhUnKhC0GUvSRN
         OuqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.195 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZB9YUT6E6vsbQ+xUKlDLDCmHVbwpg6/lqqpf1gwJ/JQ=;
        b=QxzMLLSPKoASH7tKqCRiceyEWfGw69dPGRlR4V+GKLfbO2NdpRD5XMjCI9L7CQq/Wr
         Um/oIcaYOFFYnlNF4s2LkQssW+IvYtAsAzyh+eSwCvphvAADUGCwDHVccobPOnB36cN/
         V7eO1y9+5xAm7a8kfUplY/CSX5prIeU700TPYzfHd/VCXxjpoA2R0O2nDQohnMgDzIoQ
         5ZOn+nBvXFtWGX72WmOVPUmQbxqr/jwtyZ9GxZe0g7L0rPbmfoxjKDgiKuzljTfWGzd3
         zJrvlMcnL7zDglgxx613hxdVkwavVkJ8lGGAwLZwEPkl0J3bm3Q2Lixe0/eA/WdfH0go
         W/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZB9YUT6E6vsbQ+xUKlDLDCmHVbwpg6/lqqpf1gwJ/JQ=;
        b=WpIDm2GS3CXJluFyXvSms1T8m2WucF+ELSFtDCp2hFav6AePdKp9E1ubo/rSi6Y+aZ
         OJGUodD8JR6ZS7IdxOI576aHiLJKFtCDvUtfyOUUjuPAeioSFqRcbbeDeGDTKVEXOOg/
         LPjKIR+GJBSkEstzir+btjX9XVWa5N14BgM3z79bSR1R0v7My58wJK/ZoB9Fa8vBDETV
         Z3k/SdByLw+cb0JDE+jztyaPDY4KB8RufjfUJF0+s3GN53bgNLdQQFntSE2n2V6sM09w
         bEPNKLofAlqNnYRJAOMEYBwvkLs7Qfn12SMsXGh5oKXCayWdlEdpo9S/thj7wpxM4jYR
         FuuQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ1BYM3VaMRNSxNbrHn9JJODbVOiYj5+iv6+RmVcajnEhNaMkAsq
	+DDJnera1R0lhGp/nv9Lx9w=
X-Google-Smtp-Source: ADFU+vtr8BgFHybbNMZYkLW84fcYPkIdcWiYtXtlBQAAW8dTmn3JNGIG39RwZmoAVRw2NlZDHmuUgA==
X-Received: by 2002:a17:90a:230d:: with SMTP id f13mr9577688pje.128.1583427391565;
        Thu, 05 Mar 2020 08:56:31 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:9887:: with SMTP id s7ls1230586plp.9.gmail; Thu, 05
 Mar 2020 08:56:30 -0800 (PST)
X-Received: by 2002:a17:90a:da01:: with SMTP id e1mr10069269pjv.100.1583427390798;
        Thu, 05 Mar 2020 08:56:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583427390; cv=none;
        d=google.com; s=arc-20160816;
        b=mElEhS0dafoFtPYEWVpeFMfZvPwnrWjpFHMy1uc4zPNLBeO3nyx4ava7QKuzPoaQk6
         vzzm0yAhAbmpDnwfuUfYKktEaUPh8xD7dk9ylDFb3ODoOPXwBTWI/Z81EfOzxM2PYClJ
         Htb7uwrmqI2BnKruaEjxIXDWk/To5W4x+GaE7nirisdKaKec9KKO/oMEiKsI4Fd//hGg
         xFhz8wULVWcQxvgcJ15+bblSbltXBBlBrcBTQwScs5YlRq5g8R8z7Rpdz45GijunaC3v
         woP4fU43aht9Eb6QQrR65B34KbBB0afrH6znmEuUDMO260zxVZjhmh6rKuFZJ2Zec7iP
         vRXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=1wUY0RDF3MMASgLEnkNdnYSFzMpxRmDzZ17GQ6stlW4=;
        b=Y4uOMnLDNCPPxZYb1hGqZ+jd7IXjqayP2Bpb1PDuy+X5oo38gdzb5ABCO7P9rNM+Gr
         ko/Y+6Dhp5zsHnLNvMhnsMVU+4E0Q4ZzHAkGqmQ5/Q2HRIHZh2vg2V2ysRu3iKaaOJ3V
         Nf9ZcHQXdEaAr3d2VLdEdhSwCff2U3Uf/Npd0a2zeFA1NjoK6ALrp4tc+G5LvmQsvZ9I
         JN2i+ZobSW66L3LZ0lp+l9++0yTmJl/Z5blFA0KkFFh/iB4KSUf7C+ils5jpUs10MMs+
         nKcvyMutr9L6O+1zQVsfci7xOB0532I5S3o1+x9b9nt+R6FhiWN+F1H0T8YxUgiJDpCL
         PDgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.195 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com. [209.85.210.195])
        by gmr-mx.google.com with ESMTPS id x12si339345plv.3.2020.03.05.08.56.30
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 08:56:30 -0800 (PST)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.195 as permitted sender) client-ip=209.85.210.195;
Received: by mail-pf1-f195.google.com with SMTP id 2so3023046pfg.12
        for <open-iscsi@googlegroups.com>; Thu, 05 Mar 2020 08:56:30 -0800 (PST)
X-Received: by 2002:a63:ed16:: with SMTP id d22mr8896214pgi.314.1583427390398;
        Thu, 05 Mar 2020 08:56:30 -0800 (PST)
Received: from desktop-bart.svl.corp.google.com ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
        by smtp.gmail.com with ESMTPSA id b9sm3660345pgi.75.2020.03.05.08.56.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 08:56:29 -0800 (PST)
Subject: Re: [PATCH v2] iscsi: Report connection state on sysfs
To: open-iscsi@googlegroups.com,
 Gabriel Krisman Bertazi <krisman@collabora.com>, lduncan@suse.com
Cc: cleech@redhat.com, martin.petersen@oracle.com,
 linux-scsi@vger.kernel.org, kernel@collabora.com,
 Khazhismel Kumykov <khazhy@google.com>, Junho Ryu <jayr@google.com>
References: <20200305153521.1374259-1-krisman@collabora.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <bc70bd6d-6d13-4d1c-8559-140411e361d9@acm.org>
Date: Thu, 5 Mar 2020 08:56:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200305153521.1374259-1-krisman@collabora.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.195 as
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

On 3/5/20 7:35 AM, Gabriel Krisman Bertazi wrote:
> +static const struct {
> +	int value;
> +	char *name;
> +} connection_state_names[] = {
> +	{ISCSI_CONN_UP, "up"},
> +	{ISCSI_CONN_DOWN, "down"},
> +	{ISCSI_CONN_FAILED, "failed"}
> +};
> +
> +static const char *connection_state_name(int state)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(connection_state_names); i++) {
> +		if (connection_state_names[i].value == state)
> +			return connection_state_names[i].name;
> +	}
> +	return NULL;
> +}
> +
> +static ssize_t show_conn_state(struct device *dev,
> +			       struct device_attribute *attr, char *buf)
> +{
> +	struct iscsi_cls_conn *conn = iscsi_dev_to_conn(dev->parent);
> +
> +	return sprintf(buf, "%s\n", connection_state_name(conn->state));
> +}
> +static ISCSI_CLASS_ATTR(conn, state, S_IRUGO, show_conn_state,
> +			NULL);

What has been changed in v2 compared to v1? Please always include a 
changelog when posting a new version.

Additionally, it seems like the comment I posted on v1 has not been 
addressed?

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/bc70bd6d-6d13-4d1c-8559-140411e361d9%40acm.org.
