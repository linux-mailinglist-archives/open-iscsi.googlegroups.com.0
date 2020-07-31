Return-Path: <open-iscsi+bncBCOPRU4C2YDRB76JR34QKGQED7CXA4A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 084E7233E8F
	for <lists+open-iscsi@lfdr.de>; Fri, 31 Jul 2020 06:58:40 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id m13sf8614782lfr.18
        for <lists+open-iscsi@lfdr.de>; Thu, 30 Jul 2020 21:58:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596171519; cv=pass;
        d=google.com; s=arc-20160816;
        b=GEKUJwnEy1TCMd7mhj2iixfjirPJfz2n2nWW02oqT5ZC2jr7iM5rE435x9ZG78IIFM
         Ug6PHe1EuRPkNnGdZdNmooP/n/MUwYOV2eixEraHVjBo+/g0AOGJvUYVYM9i4CGRBMkn
         uJIfWhWw8+0y/jRAwgLYMciF/8pl7R+eMrHPwgiknHUmTTBLXJ8eCsDwdIICRgs4fR7a
         f7qFznB65ge6RRDeEPgJM+phwWyywI16amcUdY6Z2sHg9qvJ65Mc69nTq+qTiQ45no7t
         PRpFWQYnqd8+cE2sOoJ8CnIcdnRENz9HBQaIGd6ynU4TYDoy20nkBOeHmZa7yygAV039
         wEBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:sender:dkim-signature:dkim-signature;
        bh=ZXb6tWmKwjFpYL2QUs+PsVoRTAW4BZwNpbs8V9xZbuM=;
        b=lXHzFL9Ju6Ef9id8AxA71Dp/hmd6OEv3xjC3krYLshBmKahpJqFZ4v4wDiTgdjoMD+
         KuPwszXA7RTT3gOgHXOlv9U7CO3CyeUp169RO5zI7Lv+Mf1AGfNJ3FA6PQHKewz+z+W5
         4bAv7QKrwyAUWon4NMxlOU//2fnSm+cLbekBgIf4JrOSQIW2ruMTNfK6M0QSgjZ88VwN
         h7cCGt1SImtmVxwJI0j2g9SvVv3r+P0bm30MN+w0J7o7feC9VJ3yBHNSW8mZV56iut1m
         iq4cZ0gL2wnCERGO+5vsHVWiz7ZSmlZ0LozpS12nYxTDX9XSyYo+KBXAsQVKZ5TtMZFb
         N7Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="n9YTaFb/";
       spf=pass (google.com: domain of sonukumar159842@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=sonukumar159842@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZXb6tWmKwjFpYL2QUs+PsVoRTAW4BZwNpbs8V9xZbuM=;
        b=tGgB4t2GXgPRzkAmbvVh2R/Nx3pyqX/QA/2ZIzK/w2Qq1r2J/82bkZCM63aN5q11Hf
         P6uHEpOAblU0EHx6M18GKEIqf/HmNO7w0UVLv+x86/zUGmzLsQnU14jN5VCPLMQY0tvc
         ZXH3RuHIlGqrPeybVW9axZSAdyC7Zx8LphZGDzwSjxalF0ppQTLkBx3Ruqmj6wjzsnvN
         kFBnKMcLHDsKTQ8PpyDU/6X38azoTpsk8J86knsLg1ZH5PD7gepk6ATjIXdBKMna7TCa
         qPicc6+JahsG93VkctqhKRCM51RSvv5T8m45Lua4H/JEo/m199h+GbmjRgZMqxHjpFe6
         SkzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZXb6tWmKwjFpYL2QUs+PsVoRTAW4BZwNpbs8V9xZbuM=;
        b=TtH09/rIVQsroJAOTtqxZDCXHJPexOlkKBIO7gMZYWZpyJIibVI7+mwPmpz5BNQPw5
         cs59oWfX2qzGUvtF0c5PoqDziY3bxi3wWGTVDnFZ878TQ01aOFSaUPNmCM3kQwUrApDk
         FgMd9CYq6EMePL0V9bQ0Cif6ChUEPSW288hTxR9SOMLa+ORYrNh3kxaI8uJVnRsEJuHq
         81SOecC6KdokSy+vzffx6/1PE1DFyy4H7CohB0DEw4mMG/U0TMqhaYDlbpWtKAuRPx8r
         ltW+t+Py7OPZxWM7x7VdhGKywbgbQ+eRhgsoCUynPtaAqw9Zx132HFG360gsRSKrAOOe
         Gk6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZXb6tWmKwjFpYL2QUs+PsVoRTAW4BZwNpbs8V9xZbuM=;
        b=qRzG2JfySo+TG/B+Z2YPOnh8ndqM6/atoQghmwpoGvgHYN6WdoLDVE+2HBclMWO7wy
         bDfe9oS/DQH3wGsztyDuZ43GyCbT9QlqbeBRsHBQGymFCdDPccTiKA0ucMlZmE7Z/qY+
         E0t+fkgOi1GuOL3b0HfiECVH0OG8ocFxOjExXLC/+9aPpa8GjZqXjZs6yX9fFv0xb+va
         hZ2F6oSDgRtnUqu76viMYOLg429cXEMxbPw7GsH7axjiEkY5Sf76BPjKCGwkj4AJcAm2
         ORROHNS5Sf133r1zM0rvEXmF/jOPMJyuaHSSuoiUWw3kpv5YEYInENNxofoaYr4mJEEi
         fMeA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533zKBp48xe8fNSG1a6wppmuXbIAYSKjwAeoU9Zn+NEc3ZD6fXUA
	4alXgMjM5eaCtjT4KQvo2Sc=
X-Google-Smtp-Source: ABdhPJxETp9vzNM8j1Gds2KImbCeypW4Om1EYFStEly9uN1T18arYOy1Aco3IIa0O8iWOwcuoBCINw==
X-Received: by 2002:a2e:a373:: with SMTP id i19mr1031962ljn.206.1596171519434;
        Thu, 30 Jul 2020 21:58:39 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9190:: with SMTP id f16ls1507090ljg.11.gmail; Thu, 30
 Jul 2020 21:58:38 -0700 (PDT)
X-Received: by 2002:a2e:b5d6:: with SMTP id g22mr1095132ljn.252.1596171518841;
        Thu, 30 Jul 2020 21:58:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596171518; cv=none;
        d=google.com; s=arc-20160816;
        b=Dp0138TiNDy7JJNrCQTit0lYJrBxZSvU9hip28e2vmuQYhQ4QFQi9i9wl5TQbBu507
         9iZ6zwEWxartFVjCS2Q8g4zRwNbf4pNohBBhTdNlaRgl/9BjBMHD7O1En2RswyNkWtxt
         2GphfS9tACe2laIqvodqNBgOhMpSJx/kbMQVXQPyoTLm/QszYp9cXjCxmJ2fSSnfwxDD
         Sink4Duo9V+9e9FDXwSxeqcJeoYzeunc2e3K9wrih6hU/h30f6ftAbXjX0uNIyR3sBRY
         UtUT6Q0NPV819+LgE9L1qIAPNQZFPCYWD9JM/CNwMTlkb4+hsgCPXoCcKm41aEgxhytT
         8yrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=3hkyTgfzw5l4mxcwOOGhbDCdEoNckoscYHhFB+o1qt4=;
        b=ePkHhM1kN45rDIQnmsC2BFxX/UQi8rOTuullSUUHJr+ziE2VHDWQ3vm5jAEtW06f/S
         loHMD3dJjhpRabF33U2LYI5iOMzy4waK4MYDmmQdX5Yq22TLfJu75ufol0otvm6a87aV
         qQQ18OVCv5tH9I0YN6emWLcPHoASW1Fd9jjY4lc3Em2u22tfdOfxrU3HMN4Tlx5hFm3E
         j/K/Me9SvqIQOESFpd+w3U3MliBY4PCPaLHzXq6XMFmjgtnMu+uxZm9ku6Mn6/GIkzDe
         IehH9NjsUHUsdaadC/sYFTbOARm7++vSlAoDc+OCJyheHOFHZUaU8EckheOgx5h5sA2r
         Cydg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="n9YTaFb/";
       spf=pass (google.com: domain of sonukumar159842@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=sonukumar159842@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id c27si444408ljn.3.2020.07.30.21.58.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 21:58:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sonukumar159842@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id q7so31179844ljm.1
        for <open-iscsi@googlegroups.com>; Thu, 30 Jul 2020 21:58:38 -0700 (PDT)
X-Received: by 2002:a2e:b00c:: with SMTP id y12mr1088747ljk.18.1596171518509;
 Thu, 30 Jul 2020 21:58:38 -0700 (PDT)
MIME-Version: 1.0
From: sonu kumar <sonukumar159842@gmail.com>
Date: Fri, 31 Jul 2020 10:28:12 +0530
Message-ID: <CAOaPBH76JhA0Mm9wNT+m6a-sXPyusVHPMfLwNo73ettORPO8fw@mail.gmail.com>
Subject: Todo list for open-iscsi
To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sonukumar159842@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="n9YTaFb/";       spf=pass
 (google.com: domain of sonukumar159842@gmail.com designates
 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=sonukumar159842@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi All,

I looked into the TODO list of open-iscsi. It is quite old and written
on July 7th,2011. Do we have any updated version of it?

I am looking for some low hanging tasks to getting started with
open-iscsi and iscsi. It would be really helpful if somebody helps me
to figure it out.

Thanks

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOaPBH76JhA0Mm9wNT%2Bm6a-sXPyusVHPMfLwNo73ettORPO8fw%40mail.gmail.com.
